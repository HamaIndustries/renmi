package symbolics.division.renmi.story;

import com.bladecoder.ink.runtime.Choice;
import com.bladecoder.ink.runtime.Story;
import com.bladecoder.ink.runtime.StoryException;
import net.minecraft.server.level.ServerPlayer;
import org.apache.commons.lang3.NotImplementedException;
import symbolics.division.renmi.Renmi;

import java.util.ArrayList;
import java.util.List;

public class ActReading {
    // ephemeral story content, needs to be serialized
    protected final Story story;
    protected final List<ActLine> lines = new ArrayList<>();
    protected final List<Choice> choices = new ArrayList<>();

    public ActReading(Act act) {
        try {
            this.story = new Story(act.compiledJson());
        } catch (Exception e) {
            throw new NotImplementedException();
        }

    }

    public ActLine currentLine() {
        return lines.isEmpty() ? null : lines.getLast();
    }

    public List<Choice> currentChoices() {
        return choices;
    }

    public void proceed(ServerPlayer player) {
        if (story.canContinue()) {
            try {
                ActLine line = ActLine.of(story.Continue());
                lines.add(line);
            } catch (StoryException e) {
                throw new NotImplementedException();
            } catch (Exception e) {
                throw new NotImplementedException();
            }
        } else {
            Renmi.LOGGER.info("player {} attempted to proceed with no input!", player.nameAndId());
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
            Renmi.LOGGER.info("player {} attempted to make invalid choice {} when the number of choices was {}", player.nameAndId(), choice, story.getCurrentChoices().size());
        }
    }
}
