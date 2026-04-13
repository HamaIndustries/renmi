package symbolics.division.renmi.story;

import net.minecraft.server.MinecraftServer;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.world.entity.player.Player;
import org.apache.commons.lang3.NotImplementedException;
import symbolics.division.renmi.net.RenmiNetworking;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class ReadingManager {
    // manages state. receives commands from client. sends stage directions to client.

    public static ReadingManager getManager(MinecraftServer server) {
        // we can do a data attachment or something
        throw new NotImplementedException();
    }

    protected Map<UUID, ActReading> activeReadings = new HashMap<>();
    protected Map<UUID, Map<Act, ActReading>> allReadings = new HashMap<>();

    public ActReading createOrLoad(ServerPlayer player, Act act) {
        throw new NotImplementedException();
    }

    public void startReading(ServerPlayer player, Act act) {
        ActReading newReading = createOrLoad(player, act);
        activeReadings.put(player.getUUID(), newReading);
        updateReadingState(player, newReading);
    }

    protected ActReading getActiveReading(Player player) {
        return activeReadings.get(player.getUUID());
    }

    protected void save(ServerPlayer player, ActReading reading) {
        throw new NotImplementedException();
    }

    // called by client packet
    public void readingProceed(ServerPlayer player) {
        ActReading reading = getActiveReading(player);
        if (reading == null) return;
        reading.proceed(player);
        updateReadingState(player, reading);
    }

    public void readingChoice(ServerPlayer player, int choice) {
        ActReading reading = getActiveReading(player);
        if (reading == null) return;
        reading.choose(player, choice);
        updateReadingState(player, reading);
    }

    public void updateReadingState(ServerPlayer player, ActReading reading) {
        ActLine line = reading.currentLine();
        List<ActChoice> choices = reading.choices.stream().map(ActChoice::of).toList();
        player.setAttached(RenmiNetworking.Attachments.READING_STATE, new ReadingState(line == null ? ActLine.INACTIVE : line, choices));
    }
}
