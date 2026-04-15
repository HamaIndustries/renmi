package symbolics.division.renmi.story;

import com.mojang.serialization.Codec;
import com.mojang.serialization.codecs.RecordCodecBuilder;
import net.minecraft.core.UUIDUtil;
import net.minecraft.resources.Identifier;
import net.minecraft.server.MinecraftServer;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.world.entity.player.Player;
import symbolics.division.renmi.Renmi;
import symbolics.division.renmi.RenmiAttachments;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/**
 * Manages states for all clients, receives commands from clients, and sends stage directions to clients.
 */
public class ReadingManager {
	public static final Codec<ReadingManager> CODEC = RecordCodecBuilder.create(instance -> instance.group(
		Codec.unboundedMap(
			UUIDUtil.STRING_CODEC,
			ActReading.CODEC
		).fieldOf("activeReadings").forGetter(mgr -> mgr.activeReadings),
		Codec.unboundedMap(
			UUIDUtil.STRING_CODEC,
			Codec.unboundedMap(Identifier.CODEC, ActReading.CODEC)
		).fieldOf("allReadings").forGetter(mgr -> mgr.allReadings)
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
		this.allReadings.replaceAll((k, v) -> new HashMap<>(v));
	}

	public ActReading createOrLoad(ServerPlayer player, Act act) {
		return allReadings
			.computeIfAbsent(player.getUUID(), i -> new HashMap<>())
			.computeIfAbsent(act.id, id -> act.createReading(player));
	}

	public void startReading(ServerPlayer player, Act act) {
		ActReading newReading = createOrLoad(player, act);
		activeReadings.put(player.getUUID(), newReading);
		updateReadingState(player, newReading);
	}

	public void resetReading(ServerPlayer player, Act act) {
		activeReadings.remove(player.getUUID());
		allReadings.remove(player.getUUID());
		updateReadingState(player, null);
	}

	protected ActReading getActiveReading(Player player) {
		return activeReadings.get(player.getUUID());
	}

	// called by client packet
	public void readingProceed(ServerPlayer player) {
		ActReading reading = getActiveReading(player);
		if (reading == null) {
			Renmi.LOGGER.info("Player attempted to proceed with no act running.");
			return;
		}
		if (reading.isDone()) { // FIXME doesnt work
			activeReadings.remove(player.getUUID());
			updateReadingState(player, null);
		}

		reading.proceed(player);
		updateReadingState(player, reading);
	}

	public void readingChoice(ServerPlayer player, int choice) {
		ActReading reading = getActiveReading(player);
		if (reading == null) {
			return;
		}
		reading.choose(player, choice);
		reading.proceed(player);
		updateReadingState(player, reading);
	}

	public void updateReadingState(ServerPlayer player, ActReading reading) {
		if (reading == null) {
			player.removeAttached(RenmiAttachments.READING_STATE);
			return;
		}
		ActLine line = reading.currentLine();
		List<ActChoice> choices = reading.currentChoices().stream().map(ActChoice::of).toList();
		player.setAttached(
			RenmiAttachments.READING_STATE,
			new ReadingState(line == null ? ActLine.INACTIVE : line, choices)
		);
	}
}
