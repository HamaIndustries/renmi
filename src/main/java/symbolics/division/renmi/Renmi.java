package symbolics.division.renmi;

import net.fabricmc.api.ModInitializer;
import net.fabricmc.fabric.api.event.lifecycle.v1.ServerTickEvents;
import net.fabricmc.fabric.api.resource.v1.ResourceLoader;
import net.minecraft.resources.Identifier;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.server.packs.PackType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import symbolics.division.renmi.block.StoryLocusBlock;
import symbolics.division.renmi.net.RenmiNetworking;
import symbolics.division.renmi.story.ActorManager;

public class Renmi implements ModInitializer {
	public static final String MOD_ID = "renmi";
	public static final Logger LOGGER = LoggerFactory.getLogger(MOD_ID);
	public static final RenmiConfig CONFIG = new RenmiConfig().register(MOD_ID);

	public static Identifier id(String id) {
		return Identifier.fromNamespaceAndPath(MOD_ID, id);
	}

	@Override
	public void onInitialize() {
		LOGGER.info("Hello Sakura High Secondary Academy!");
		RenmiAttachments.init();
		RenmiNetworking.init();
		RenmiCommands.init();
		RenmiBlocks.init();
		RenmiParticles.init();
		RenmiDataComponents.init();

		ResourceLoader.get(PackType.CLIENT_RESOURCES).registerReloadListener(id("actors"), new ActorManager());

		ServerTickEvents.START_LEVEL_TICK.register(level -> {
			for (ServerPlayer player : level.players()) {
				if (player == null) {
					continue; // trust me it can happen its bitten me in the ass before
				}
				StoryLocusBlock.tickPlayer(player);
			}
		});
	}
}
