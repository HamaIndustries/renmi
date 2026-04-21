package symbolics.division.renmi.story;

import com.mojang.serialization.Codec;
import com.mojang.serialization.codecs.RecordCodecBuilder;
import net.minecraft.resources.Identifier;

import java.util.HashMap;
import java.util.Map;

public class SeriesReading implements StoryListener {

	public static Codec<SeriesReading> CODEC = RecordCodecBuilder.create(i -> i.group(
			Codec.unboundedMap(Identifier.CODEC, ActReading.CODEC).fieldOf("actReadings").forGetter(ser -> ser.actReadings),
			Codec.unboundedMap(Codec.STRING, Codec.BOOL).fieldOf("knotsVisited").forGetter(ser -> ser.knotsVisited),
			Codec.unboundedMap(Codec.STRING, Codec.INT).fieldOf("globalVars").forGetter(ser -> ser.globalVars),
			ActReading.CODEC
				.fieldOf("currentActReading")
				.forGetter(SeriesReading::getCurrentActReading)
		).apply(i, SeriesReading::new)
	);

	protected final Map<Identifier, ActReading> actReadings = new HashMap<>();
	protected final Map<String, Boolean> knotsVisited = new HashMap<>();

	protected Map<String, Integer> globalVars = new HashMap<>();

	protected ActReading currentActReading;


	public SeriesReading() {
	}


	public SeriesReading(Map<Identifier, ActReading> actReadings, Map<String, Boolean> knotsVisited, Map<String,Integer> globalVars, ActReading currentActReading) {
		this.actReadings.putAll(actReadings);
		this.knotsVisited.putAll(knotsVisited);
		this.globalVars.putAll(globalVars);
		this.currentActReading = currentActReading;
	}

	public void setCurrentActReading(ActReading actReading) {
		this.currentActReading = actReading;
	}


	public ActReading getCurrentActReading() {
		return currentActReading;
	}

	public boolean isActFinished(Identifier id) {
		return actReadings.containsKey(id) && actReadings.get(id).isDone();
	}

	public boolean isKnotVisited(String knot) {
		return this.knotsVisited.getOrDefault(knot, false);
	}

	@Override
	public void onKnotVisited(String knot) {
		this.knotsVisited.put(knot, true);
	}

	@Override
	public void onWriteGlobal(String key, int value) {
		this.globalVars.put(key,value);
	}

	@Override
	public int onReadGlobal(String key) {
		return this.globalVars.computeIfAbsent(key, k -> 0);
	}

	public void addReading(Identifier actId, ActReading reading) {
		actReadings.put(actId, reading);
	}

	public Map<Identifier, ActReading> getActReadings(){
		return this.actReadings;
	}
}
