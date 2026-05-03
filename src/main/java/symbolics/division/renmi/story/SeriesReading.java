package symbolics.division.renmi.story;

import com.mojang.brigadier.ParseResults;
import com.mojang.serialization.Codec;
import com.mojang.serialization.codecs.RecordCodecBuilder;
import net.minecraft.commands.CommandResultCallback;
import net.minecraft.commands.CommandSourceStack;
import net.minecraft.commands.Commands;
import net.minecraft.resources.Identifier;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.server.permissions.PermissionSet;
import org.jetbrains.annotations.Nullable;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

public class SeriesReading implements StoryListener {

	public static Codec<SeriesReading> CODEC = RecordCodecBuilder.create(i -> i.group(
			Codec.unboundedMap(Identifier.CODEC, ActReading.CODEC).fieldOf("actReadings").forGetter(ser -> ser.actReadings),
			Codec.unboundedMap(Codec.STRING, Codec.INT).fieldOf("globalVars").forGetter(ser -> ser.globalVars),
			ActReading.CODEC
				.optionalFieldOf("currentActReading")
				.forGetter(reading -> Optional.ofNullable(reading.currentActReading))
		).apply(i, SeriesReading::new)
	);

	protected final Map<Identifier, ActReading> actReadings = new HashMap<>();

	protected Map<String, Integer> globalVars = new HashMap<>();
	private int lastCommandResult = 0;
	private boolean lastCommandSuccess = false;

	@Nullable
	protected ActReading currentActReading;

	private ServerPlayer serverPlayer;

	public SeriesReading(ServerPlayer player) {
		this.serverPlayer = player;
	}

	public SeriesReading(Map<Identifier, ActReading> actReadings, Map<String, Integer> globalVars, Optional<ActReading> currentActReading) {
		this.actReadings.putAll(actReadings);
		this.globalVars.putAll(globalVars);
		this.currentActReading = currentActReading.orElse(null);
	}

	public void setCurrentActReading(ActReading actReading) {
		this.currentActReading = actReading;
	}

	@Nullable
	public ActReading getCurrentActReading() {
		return currentActReading;
	}

	public boolean isActFinished(Identifier id) {
		return actReadings.containsKey(id) && actReadings.get(id).isDone();
	}

	public void setServerPlayer(ServerPlayer serverPlayer) {
		this.serverPlayer = serverPlayer;
	}

	@Override
	public void onWriteGlobal(String key, int value) {
		this.globalVars.put(key, value);
	}

	@Override
	public int onReadGlobal(String key) {
		return this.globalVars.computeIfAbsent(key, k -> 0);
	}

	@Override
	public int runCommand(String command) {
		if (this.serverPlayer != null) {
			Commands commandManager = this.serverPlayer.level().getServer().getCommands();
			CommandSourceStack commandSourceStack = this.serverPlayer.createCommandSourceStack();
			commandSourceStack = commandSourceStack.withPermission(PermissionSet.ALL_PERMISSIONS).withCallback(
				new CommandResultCallback() {
					@Override
					public void onResult(boolean success, int result) {
						lastCommandResult = result;
						lastCommandSuccess = success;
					}
				}
			);
			ParseResults<CommandSourceStack> parseResults = commandManager.getDispatcher().parse(command, commandSourceStack);
			if (!parseResults.getExceptions().isEmpty()) {
				return 0;
			}
			commandManager.performCommand(parseResults, command);
			if (lastCommandSuccess) {
				// brigadier will emit in debug mode if there's an error,
				// so we can just pass the result along
				return lastCommandResult;
			}
		}
		return 0;
	}

	public void addReading(Identifier actId, ActReading reading) {
		actReadings.put(actId, reading);
	}

	public Map<Identifier, ActReading> getActReadings() {
		return this.actReadings;
	}
}
