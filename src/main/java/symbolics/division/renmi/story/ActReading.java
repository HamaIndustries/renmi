package symbolics.division.renmi.story;

import com.bladecoder.ink.runtime.Choice;
import com.bladecoder.ink.runtime.Story;
import com.bladecoder.ink.runtime.StoryException;
import com.mojang.serialization.Codec;
import com.mojang.serialization.codecs.RecordCodecBuilder;
import net.minecraft.server.level.ServerPlayer;
import org.apache.commons.lang3.NotImplementedException;
import symbolics.division.renmi.Renmi;

import java.util.ArrayList;
import java.util.List;

public class ActReading {
	public static Codec<ActReading> CODEC = RecordCodecBuilder.create(instance ->
		instance.group(
			Codec.STRING.fieldOf("story").forGetter(ActReading::storyJson),
			Codec.STRING.fieldOf("text").forGetter(ActReading::text)
		).apply(instance, ActReading::new)
	);

	protected final Story story;
	protected ActLine currentLine;
	protected String text = "";
	protected final List<Choice> choices = new ArrayList<>();

	public ActReading(Act act, ServerPlayer player) {
		// brand new act
		try {
			this.story = act.getStory();
			proceed(player);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	public ActReading(String storyJson, String text) {
		// loaded act
		try {
			this.story = new Story(storyJson);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		this.text = text;
	}

	protected String storyJson() {
		try {
			return story.toJson();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	protected String text() {
		return text;
	}

	public ActLine currentLine() {
		return currentLine;
	}

	public List<Choice> currentChoices() {
		return choices;
	}

	public void proceed(ServerPlayer player) {
		if (story.canContinue()) {
			try {
				currentLine = ActLine.of(story.Continue());
			} catch (StoryException e) {
				throw new RuntimeException(e);
			} catch (Exception e) {
				throw new RuntimeException(e);
//                throw new NotImplementedException();
			}
		}
	}

	public void choose(ServerPlayer player, int choice) {
		if (choice < story.getCurrentChoices().size()) {
			try {
				story.chooseChoiceIndex(choice);
			} catch (Exception e) {
				throw new NotImplementedException();
			}
		} else {
			Renmi.LOGGER.info(
				"player {} attempted to make invalid choice {} when the number of choices was {}",
				player.nameAndId(),
				choice,
				story.getCurrentChoices().size()
			);
		}
	}
}
