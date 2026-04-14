package symbolics.division.renmi.story;

import com.bladecoder.ink.compiler.Compiler;
import com.mojang.datafixers.util.Pair;
import com.mojang.serialization.Codec;
import com.mojang.serialization.codecs.RecordCodecBuilder;
import net.minecraft.resources.Identifier;
import net.minecraft.server.MinecraftServer;
import symbolics.division.renmi.RenmiAttachments;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * A collection of all of our {@link Series}'s.
 */
public class RenmiLibrary {
	public static final Codec<RenmiLibrary> CODEC = RecordCodecBuilder.create(
		i -> i.group(
			Codec.compoundList(Identifier.CODEC, Series.CODEC)
				.fieldOf("acts")
				.forGetter(p -> p.library.entrySet().stream().map(e -> new Pair<>(e.getKey(), e.getValue())).toList())
		).apply(i, RenmiLibrary::new)
	);

	public static RenmiLibrary get(MinecraftServer server) {
		return server.globalAttachments().getAttachedOrCreate(RenmiAttachments.LIBRARY);
	}

	protected Map<Identifier, Series> library = new HashMap<>();

	public RenmiLibrary() {
	}

	protected RenmiLibrary(List<Pair<Identifier, Series>> data) {
		for (var p : data) { library.put(p.getFirst(), p.getSecond()); }
	}

	public Series getSeries(Identifier id) {
		return library.get(id);
	}

	public void createActFromSource(Identifier seriesID, Identifier actID, String source) {
		try {
			String json = new Compiler(source, null).compile(source);
			createAct(seriesID, actID, new Act(actID, source, json));
		} catch (RuntimeException e) {
			throw new RenmiCompilationFailed();
		}
	}

	protected void createAct(Identifier seriesID, Identifier actID, Act act) {
		Series series = library.computeIfAbsent(seriesID, _ -> new Series());
		series.createAct(actID, act);
	}

	public static final class RenmiCompilationFailed extends RuntimeException {
	}

}
