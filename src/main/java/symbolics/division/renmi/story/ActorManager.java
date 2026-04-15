package symbolics.division.renmi.story;

import net.minecraft.resources.FileToIdConverter;
import net.minecraft.resources.Identifier;
import net.minecraft.server.packs.resources.ResourceManager;
import net.minecraft.server.packs.resources.SimpleJsonResourceReloadListener;
import net.minecraft.util.profiling.ProfilerFiller;
import org.jspecify.annotations.Nullable;

import java.util.HashMap;
import java.util.Map;

public class ActorManager extends SimpleJsonResourceReloadListener<Actor> {
	private static Map<Identifier, Actor> actors = new HashMap<>();

	public ActorManager() {
		super(Actor.CODEC.codec(), FileToIdConverter.json("actors"));
	}

	protected void apply(
		final Map<Identifier, Actor> preparations,
		final ResourceManager manager,
		final ProfilerFiller profiler
	) {
		actors = preparations;
	}

	@Nullable
	public static Actor get(Identifier id) {
		return actors.get(id);
	}
}
