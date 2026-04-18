package symbolics.division.renmi.story;

import com.mojang.datafixers.util.Pair;
import com.mojang.serialization.Codec;
import com.mojang.serialization.codecs.RecordCodecBuilder;
import net.minecraft.core.UUIDUtil;
import net.minecraft.resources.Identifier;

import java.util.HashMap;
import java.util.Map;

public class SeriesReading implements KnotListener {

	public static Codec<SeriesReading> CODEC = RecordCodecBuilder.create(i -> i.group(
		Codec.unboundedMap(Identifier.CODEC, ActReading.CODEC).fieldOf("actReadings").forGetter(ser -> ser.actReadings),
		Codec.unboundedMap(Codec.STRING, Codec.BOOL).fieldOf("knotsVisited").forGetter(ser -> ser.knotsVisited),
		ActReading.CODEC
			.fieldOf("currentActReading")
			.forGetter(SeriesReading::getCurrentActReading)
		).apply(i, SeriesReading::new)
	);

	protected final Map<Identifier, ActReading> actReadings;
	protected final Map<String, Boolean> knotsVisited;
	protected ActReading currentActReading;


	public SeriesReading(){
		this.actReadings = new HashMap<>();
		this.knotsVisited = new HashMap<>();
		this.currentActReading = null;
	}


	public SeriesReading(Map<Identifier, ActReading> actReadings, Map<String, Boolean> knotsVisited, ActReading currentActReading){
		this.actReadings = actReadings;
		this.knotsVisited = knotsVisited;
		this.currentActReading = currentActReading;
	}

	public void setCurrentActReading(ActReading actReading) {
		this.currentActReading = actReading;
	}


	public ActReading getCurrentActReading() {
		return currentActReading;
	}


	public boolean isKnotVisited(String knot) {
		return this.knotsVisited.getOrDefault(knot, false);
	}

	@Override
	public void onKnotVisited(String knot) {
		this.knotsVisited.put(knot,true);
	}
}
