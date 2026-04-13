package symbolics.division.renmi.story;

import com.mojang.serialization.Codec;
import com.mojang.serialization.codecs.RecordCodecBuilder;
import net.minecraft.core.UUIDUtil;
import net.minecraft.resources.Identifier;
import net.minecraft.server.MinecraftServer;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.world.entity.player.Player;
import org.apache.commons.lang3.NotImplementedException;
import symbolics.division.renmi.RenmiAttachments;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class ReadingManager {
    // manages state. receives commands from client. sends stage directions to client.

    public static final Codec<ReadingManager> CODEC = RecordCodecBuilder.create(instance -> instance.group(
            Codec.unboundedMap(UUIDUtil.CODEC, ActReading.CODEC).fieldOf("activeReadings").forGetter(mgr -> mgr.activeReadings),
            Codec.unboundedMap(UUIDUtil.CODEC, Codec.unboundedMap(Identifier.CODEC, ActReading.CODEC)).fieldOf("allReadings").forGetter(mgr -> mgr.allReadings)
    ).apply(instance, ReadingManager::new));

    public static ReadingManager getManager(MinecraftServer server) {
        return server.globalAttachments().getAttachedOrCreate(RenmiAttachments.READING_MANAGER);
    }

    protected final Map<UUID, ActReading> activeReadings = new HashMap<>();
    protected final Map<UUID, Map<Identifier, ActReading>> allReadings = new HashMap<>();

    public ReadingManager() {
    }

    public ReadingManager(Map<UUID, ActReading> activeReadings, Map<UUID, Map<Identifier, ActReading>> allReadings) {
        this.activeReadings.putAll(activeReadings);
        allReadings.replaceAll((k, v) -> new HashMap<>(v));
    }

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
        List<ActChoice> choices = reading.currentChoices().stream().map(ActChoice::of).toList();
        player.setAttached(RenmiAttachments.READING_STATE, new ReadingState(line == null ? ActLine.INACTIVE : line, choices));
    }
}
