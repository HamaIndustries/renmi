package symbolics.division.renmi.story;

import com.bladecoder.ink.runtime.Choice;
import com.bladecoder.ink.runtime.Story;
import com.bladecoder.ink.runtime.StoryException;
import com.mojang.serialization.Codec;
import com.mojang.serialization.codecs.RecordCodecBuilder;
import net.minecraft.server.level.ServerPlayer;
import org.apache.commons.lang3.NotImplementedException;
import symbolics.division.renmi.Renmi;

import java.util.List;

/**
 * A client's state for a particular {@link Act}
 *
 * <p>It keeps track of their current {@link ActLine}, and is managed by the {@link ReadingManager}.
 */
public class ActReading {
	public static Codec<ActReading> CODEC = RecordCodecBuilder.create(instance ->
		instance.group(
			Codec.STRING.fieldOf("story").forGetter(ActReading::storyJson),
			Codec.STRING.fieldOf("text").forGetter(ActReading::text),
			Codec.STRING.fieldOf("state").forGetter(ActReading::stateJson)
		).apply(instance, ActReading::new)
	);

	protected final Story story;
	protected ActLine currentLine;
	protected String text = "";

	private StoryListener storyListener = null;

	/**
	 * A brand new act.
	 */
	public ActReading(Act act, ServerPlayer player) {
		try {
			this.story = act.getStory();
			proceed(player);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * A loaded act.
	 */
	public ActReading(String storyJson, String text, String state) {
		try {
			this.story = new Story(storyJson);
			this.story.getState().loadJson(state);
			this.story.bindExternalFunction("on_knot_visited ", new Story.ExternalFunction1<String, String>() {
				@Override
				protected String call(String knotName) throws Exception {
					onKnotVisited(knotName);
					return knotName;
				}
			}, false);
			this.story.bindExternalFunction("write_global", new Story.ExternalFunction2<String,Integer,Integer>() {
				@Override
				protected Integer call(String key, Integer value) throws Exception {
					storyListener.onWriteGlobal(key,value);
					return value;
				}

			}, false);
			this.story.bindExternalFunction("read_global ", new Story.ExternalFunction1<String, Integer>() {
				@Override
				protected Integer call(String key) throws Exception {
					return storyListener.onReadGlobal(key);
				}
			}, false);

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

	protected String stateJson() {
		try {
			return story.getState().toJson();
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
		return story.getCurrentChoices();
	}

	public void proceed(ServerPlayer player) {
		if (story.canContinue()) {
			try {
				currentLine = ActLine.of(story.Continue());
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

	public void onKnotVisited(String knot) {
		if (storyListener != null) {
			storyListener.onKnotVisited(knot);
		}
	}
}
