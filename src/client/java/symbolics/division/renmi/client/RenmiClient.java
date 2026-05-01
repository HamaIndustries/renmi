package symbolics.division.renmi.client;

import net.fabricmc.api.ClientModInitializer;
import net.fabricmc.fabric.api.client.event.lifecycle.v1.ClientEntityEvents;
import net.fabricmc.fabric.api.client.networking.v1.ClientPlayNetworking;
import net.fabricmc.fabric.api.client.particle.v1.ParticleProviderRegistry;
import net.minecraft.client.Minecraft;
import net.minecraft.client.player.LocalPlayer;
import symbolics.division.renmi.RenmiAttachments;
import symbolics.division.renmi.RenmiParticles;
import symbolics.division.renmi.client.gui.StoryLocusScreen;
import symbolics.division.renmi.client.gui.StoryLogScreen;
import symbolics.division.renmi.client.gui.StoryScreen;
import symbolics.division.renmi.client.particle.StoryNodeParticle;
import symbolics.division.renmi.net.S2CActEditingPacket;
import symbolics.division.renmi.net.S2CDisplayStoryLogPacket;
import symbolics.division.renmi.net.S2CDisplayStoryScreenPacket;
import symbolics.division.renmi.net.S2CStoryCompileErrorPacket;

public class RenmiClient implements ClientModInitializer {
	@Override
	public void onInitializeClient() {
		ClientEntityEvents.ENTITY_LOAD.register((entity, clientLevel) -> {
			if (entity instanceof LocalPlayer player) {
				player.onAttachedSet(RenmiAttachments.READING_STATE).register((o, n) -> StoryScreen.runUpdateCallback());
			}
		});

		ClientPlayNetworking.registerGlobalReceiver(
			S2CDisplayStoryScreenPacket.TYPE,
			(payload, context) -> Minecraft.getInstance().setScreen(new StoryScreen())
		);

		ClientPlayNetworking.registerGlobalReceiver(
			S2CActEditingPacket.TYPE, (payload, context) -> {
				var mc = Minecraft.getInstance();
				mc.setScreen(new StoryLocusScreen(
					payload.series(),
					payload.act(),
					payload.inkSource(),
					payload.locus().orElse(null),
					payload.rgb()
				));
			}
		);

		ClientPlayNetworking.registerGlobalReceiver(
			S2CDisplayStoryLogPacket.TYPE, (payload, context) -> Minecraft.getInstance().setScreen(new StoryLogScreen(payload.text()))
		);

		ClientPlayNetworking.registerGlobalReceiver(S2CStoryCompileErrorPacket.TYPE, (s2CStoryCompileErrorPacket, context) -> {
			var mc = Minecraft.getInstance();
			if (mc.screen instanceof StoryLocusScreen screen) {
				screen.setErrorMessage(s2CStoryCompileErrorPacket.errorMessage());
			}
		});

		ParticleProviderRegistry.getInstance().register(RenmiParticles.STORY_NODE, StoryNodeParticle.Provider::new);
	}
}
