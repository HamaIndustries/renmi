package symbolics.division.renmi.story;

import com.bladecoder.ink.runtime.Story;
import com.mojang.serialization.Codec;
import com.mojang.serialization.DataResult;
import com.mojang.serialization.codecs.RecordCodecBuilder;
import net.minecraft.resources.Identifier;
import net.minecraft.server.level.ServerPlayer;
import symbolics.division.renmi.Renmi;

import java.util.ArrayList;
import java.util.List;
import java.util.function.BiPredicate;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * A wrapper for an Ink {@link Story}.
 */
public class Act {
	public static final Codec<Act> CODEC = RecordCodecBuilder.create(
		instance -> instance.group(
			Identifier.CODEC.fieldOf("id").forGetter(p -> p.id),
			Codec.STRING.fieldOf("source").forGetter(p -> p.source),
			Codec.STRING.fieldOf("json").forGetter(p -> p.json)
		).apply(instance, Act::new)
	);

	Pattern REQUIRE_REGEX = Pattern.compile("require (\\S+) (.*)");
	Pattern TITLE_REGEX = Pattern.compile("title (.*)");
	Pattern REPEATABLE_REGEX = Pattern.compile("repeatable");

	protected final Identifier id;
	protected String source;
	protected String json;
	protected List<BiPredicate<ServerPlayer, SeriesReading>> conditions = new ArrayList<>();
	protected String title = "";
	protected final boolean repeatable;

	public Act(Identifier id, String source, String json) {
		this.id = id;
		this.source = source;
		this.json = json;

		try {
			Story tempStory = new Story(json);
			boolean runOnce = true;
			if (tempStory.getGlobalTags() != null) {
				for (var tag : tempStory.getGlobalTags()) {
					Matcher regMatch = REQUIRE_REGEX.matcher(tag);
					if (regMatch.matches() && regMatch.group(1).equals("act")) {
						DataResult<Identifier> prevAct = Identifier.read(regMatch.group(2));
						if (prevAct.isError()) {
							Renmi.LOGGER.info("Failed to create act with id \"{}\"", regMatch.group(2));
						} else {
							Identifier prevActId = prevAct.getOrThrow();
							conditions.add((player, series) -> series.isActFinished(prevActId));
						}
					}

					Matcher titleMatch = TITLE_REGEX.matcher(tag);
					if (titleMatch.matches()) {
						this.title = titleMatch.group(1);
					}

					if (REPEATABLE_REGEX.matcher(tag).matches()) {
						runOnce = false;
					}
				}
			}
			if (runOnce) {
				// if its not repeatable, then the condition to start is that it has not been completed.
				// its bad design the completion should be tracked separately like a tag etc etc
				conditions.add((player, seriesReading) -> !seriesReading.isActFinished(this.id));
				repeatable = false;
			} else {
				// we expect a repeatable act to be deleted as soon as it is completed.
				repeatable = true;
			}
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	public boolean startConditionsMet(ServerPlayer player, SeriesReading series) {
		// determines if this story is available for a player to begin.
		// example conditions:
		//		Has player visited an act or know within an act?
		if (conditions.isEmpty()) return true;
		for (var cond : conditions) {
			if (!cond.test(player, series)) return false;
		}
		return true;
	}

	public String source() {
		return this.source;
	}

	public Story getStory() {
		try {
			return new Story(json);
		} catch (Exception e) {
			throw new RuntimeException();
		}
	}

	public boolean repeatable() {
		return this.repeatable;
	}
}
