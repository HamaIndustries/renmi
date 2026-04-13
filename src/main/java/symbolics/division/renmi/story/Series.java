package symbolics.division.renmi.story;

import com.mojang.datafixers.util.Pair;
import com.mojang.serialization.Codec;
import com.mojang.serialization.codecs.RecordCodecBuilder;
import net.minecraft.resources.Identifier;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Series {
	public static final Codec<Series> CODEC = RecordCodecBuilder.create(
			i -> i.group(
					Codec.compoundList(Identifier.CODEC, Act.CODEC)
							.fieldOf("acts")
							.forGetter(p -> p.acts.entrySet().stream().map(e -> new Pair<>(e.getKey(), e.getValue())).toList())
			).apply(i, Series::new)
	);

	protected final Map<Identifier, Act> acts = new HashMap<>();

	public Series() {
	}

	public Series(List<Pair<Identifier, Act>> acts) {
		for (var p : acts) {
			this.acts.put(p.getFirst(), p.getSecond());
		}
	}

	public void createAct(Identifier id, Act act) {
		acts.put(id, act);
	}

	public Act getAct(Identifier act) {
		return acts.get(act);
	}
}
