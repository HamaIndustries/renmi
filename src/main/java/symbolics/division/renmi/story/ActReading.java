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

/**
 * A client's state for a particular {@link Act}
 *
 * <p>It keeps track of their current {@link ActLine}, and is managed by the {@link ReadingManager}.
 */
public class ActReading implements ExternalListener {
	public static Codec<ActReading> CODEC = RecordCodecBuilder.create(instance ->
		instance.group(
			Codec.STRING.fieldOf("story").forGetter(ActReading::storyJson),
			Codec.STRING.fieldOf("text").forGetter(ActReading::text),
			Codec.STRING.fieldOf("state").forGetter(ActReading::stateJson)
		).apply(instance, ActReading::ofLoaded)
	);

	protected final Story story;
	protected ActLine currentLine;
	protected String text = "";

	private StoryListener storyListener = null;

	private List<String> globalTags = new ArrayList<>();

	private ActReading(Story story, String text) {
		try {
			this.story = story;
			this.globalTags = this.story.getGlobalTags();
			if (this.globalTags == null) this.globalTags = List.of();
			this.text = text;
			ExternalListener.bindExternals(this.story, this);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	public static ActReading ofNew(Act act, ServerPlayer player) {
		try {
			ActReading reading = new ActReading(act.getStory(), "");
			reading.proceed(player); // needs to see first line
			return reading;
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	public static ActReading ofLoaded(String storyJson, String prevText, String state) {
		try {
			Story story = new Story(storyJson);
			story.getState().loadJson(state);
			return new ActReading(story, prevText);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	protected String storyJson() {
		try {
			return story.toJson();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	protected String stateJson() {
		try {
			return story.getState().toJson();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	public String text() {
		return text;
	}

	public ActLine currentLine() {
		return currentLine;
	}

	public List<Choice> currentChoices() {
		return story.getCurrentChoices();
	}

	public void proceed(ServerPlayer player) {
		proceed(player, 0);
	}

	public void proceed(ServerPlayer player, int depth) {
		if (story.canContinue()) {
			try {
				String text = story.Continue();
				// not 100% sure this is needed
				if (text.isEmpty() && story.canContinue() && depth < 10) {
					proceed(player, depth + 1);
				} else {
					currentLine = ActLine.of(text, isDone(), this.globalTags, this.story.getCurrentTags());
					this.text += text;
				}
			} catch (StoryException e) {
				throw new RuntimeException(e);
			} catch (Exception e) {
				throw new RuntimeException(e);
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

	public boolean isDone() {
		return !story.canContinue() && story.getCurrentChoices().isEmpty();
	}

	public void reset() {
		try {
			this.story.resetState();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	public void setStoryListener(StoryListener storyListener) {
		this.storyListener = storyListener;
	}

	@Override
	public Integer onWriteGlobal(String key, int value) {
		storyListener.onWriteGlobal(key, value);
		return value;
	}

	@Override
	public Integer onReadGlobal(String key) {
		if (storyListener != null) {
			return storyListener.onReadGlobal(key);
		}
		return 0;
	}

	@Override
	public Integer onRunCommand(String command) {
		if (storyListener != null) {
			return storyListener.runCommand(command);
		}
		return 0;
	}
}
