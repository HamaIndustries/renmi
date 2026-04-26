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
import symbolics.division.renmi.util.RenmiExceptions;

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
			Codec.unboundedMap(Identifier.CODEC, SeriesReading.CODEC)
		).fieldOf("allSeriesReadings").forGetter(mgr -> mgr.allSeriesReadings),
		Codec.unboundedMap(
			UUIDUtil.STRING_CODEC,
			ActReading.CODEC
		).fieldOf("activeReadings").forGetter(mgr -> mgr.activeReadings)
	).apply(instance, ReadingManager::new));


	public static ReadingManager getManager(MinecraftServer server) {
		return server.globalAttachments().getAttachedOrCreate(RenmiAttachments.READING_MANAGER);
	}

	protected final Map<UUID, ActReading> activeReadings = new HashMap<>();

	protected final Map<UUID, Map<Identifier, SeriesReading>> allSeriesReadings = new HashMap<>();

	public ReadingManager() {
	}

	public ReadingManager(Map<UUID, Map<Identifier, SeriesReading>> allSeriesReadings, Map<UUID, ActReading> activeReadings) {
		this.activeReadings.putAll(activeReadings);
		this.allSeriesReadings.replaceAll((k, v) -> new HashMap<>(v));
	}

	public ActReading createOrLoad(ServerPlayer player, Series series, Act act) {
		SeriesReading seriesReading = createOrLoad(player, series);
		ActReading reading = seriesReading.getActReadings().computeIfAbsent(act.id, id -> act.createReading(player));
		return reading;
	}

	public SeriesReading createOrLoad(ServerPlayer player, Series series) {
		return allSeriesReadings
			.computeIfAbsent(player.getUUID(), i -> new HashMap<>())
			.computeIfAbsent(series.id, id -> series.createReading());
	}

	public void startReading(ServerPlayer player, Act act, Series series, boolean force) throws RenmiExceptions.ReadingConditionsUnmet {
		ActReading newReading = createOrLoad(player, series, act);
		SeriesReading seriesReading = createOrLoad(player, series);
		if (!force && !act.startConditionsMet(player, seriesReading)) {
			throw new RenmiExceptions.ReadingConditionsUnmet();
		}
		activeReadings.put(player.getUUID(), newReading);
		seriesReading.setCurrentActReading(newReading);
		seriesReading.setServerPlayer(player);
		newReading.setStoryListener(seriesReading);
		updateReadingState(player, newReading);
	}

	public void resetReading(ServerPlayer player, Series series, Act act) {
		activeReadings.remove(player.getUUID());

		Map<Identifier, SeriesReading> playerSeries = allSeriesReadings.get(player.getUUID());

		if (playerSeries != null && playerSeries.containsKey(series.id)) {
			SeriesReading seriesReading = playerSeries.get(series.id);
			seriesReading.getActReadings().remove(act.id);
		}
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

		if (reading.isDone()) {
			activeReadings.remove(player.getUUID());
			updateReadingState(player, null);
		} else {
			reading.proceed(player);
			updateReadingState(player, reading);
		}
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
			new ReadingState(line == null ? ActLine.INACTIVE : line, choices, line == null ? true : line.end())
		);
	}
}
