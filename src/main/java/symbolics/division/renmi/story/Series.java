package symbolics.division.renmi.story;

import com.mojang.datafixers.util.Pair;
import com.mojang.serialization.Codec;
import com.mojang.serialization.codecs.RecordCodecBuilder;
import net.minecraft.resources.Identifier;
import net.minecraft.server.level.ServerPlayer;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * A collection of {@link Act}'s.
 */
public class Series {
	public static final Codec<Series> CODEC = RecordCodecBuilder.create(
		i -> i.group(
			Identifier.CODEC
				.fieldOf("id")
				.forGetter(series -> series.id),
			Codec.compoundList(Identifier.CODEC, Act.CODEC)
				.fieldOf("acts")
				.forGetter(p -> p.acts.entrySet().stream().map(e -> new Pair<>(e.getKey(), e.getValue())).toList())
		).apply(i, Series::new)
	);

	protected final Identifier id;
	protected final Map<Identifier, Act> acts = new HashMap<>();

	public Series(Identifier seriesId) {
		this.id = seriesId;
	}

	public Series(Identifier id, List<Pair<Identifier, Act>> acts) {
		this.id = id;
		for (var p : acts) {
			this.acts.put(p.getFirst(), p.getSecond());
		}
	}

	public SeriesReading createReading(ServerPlayer player) {
		return new SeriesReading(player);
	}

	public void createAct(Identifier id, Act act) {
		acts.put(id, act);
	}

	public Act getAct(Identifier act) {
		return acts.get(act);
	}

	public Map<Identifier, Act> allActs() {
		return Map.copyOf(acts);
	}
}
