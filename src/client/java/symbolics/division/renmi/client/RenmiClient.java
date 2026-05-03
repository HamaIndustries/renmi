package symbolics.division.renmi.client;

import net.fabricmc.api.ClientModInitializer;
import net.fabricmc.fabric.api.client.event.lifecycle.v1.ClientEntityEvents;
import net.fabricmc.fabric.api.client.networking.v1.ClientPlayNetworking;
import net.fabricmc.fabric.api.client.particle.v1.ParticleProviderRegistry;
import net.fabricmc.fabric.api.client.rendering.v1.hud.HudElementRegistry;
import net.fabricmc.fabric.api.client.rendering.v1.hud.VanillaHudElements;
import net.minecraft.client.DeltaTracker;
import net.minecraft.client.Minecraft;
import net.minecraft.client.gui.Font;
import net.minecraft.client.gui.GuiGraphicsExtractor;
import net.minecraft.client.player.LocalPlayer;
import net.minecraft.resources.Identifier;
import symbolics.division.renmi.Renmi;
import symbolics.division.renmi.RenmiAttachments;
import symbolics.division.renmi.RenmiParticles;
import symbolics.division.renmi.client.gui.StoryLocusScreen;
import symbolics.division.renmi.client.gui.StoryLogScreen;
import symbolics.division.renmi.client.gui.StoryScreen;
import symbolics.division.renmi.client.particle.StoryNodeParticle;
import symbolics.division.renmi.ReadingPlayer;
import symbolics.division.renmi.net.*;
import symbolics.division.renmi.story.LoadingState;

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

		ClientPlayNetworking.registerGlobalReceiver(S2CPlayerReadingPacket.TYPE, (s2CPlayerReadingPacket, context) -> {
            var readingPlayer = context.player().level().getEntity(s2CPlayerReadingPacket.playerId());
			if(readingPlayer != null) {
				((ReadingPlayer)readingPlayer).setReading(s2CPlayerReadingPacket.reading());
			}
		});


		ParticleProviderRegistry.getInstance().register(RenmiParticles.STORY_NODE, StoryNodeParticle.Provider::new);

		//Progress Bar Rendering
		HudElementRegistry.attachElementBefore(VanillaHudElements.BOSS_BAR, Identifier.fromNamespaceAndPath(Renmi.MOD_ID, "progress_bar"), RenmiClient::renderProgressBar);
	}

	private static void renderProgressBar(GuiGraphicsExtractor graphics, DeltaTracker deltaTracker) {
		final int MAX_TICKS = 100; // probably replace with a config value later?
		final int BAR_WIDTH = 100;
		final int BAR_HEIGHT = 8;
		final String CANCEL_TEXT = "Press [Crouch] to Cancel";

		Minecraft mc = Minecraft.getInstance();
		LocalPlayer player = mc.player;
		if (player == null) return;

		LoadingState state = player.getAttached(RenmiAttachments.LOADING_STATE);
		if (state == null || state.ticks() <= 0 || state.ticks() > MAX_TICKS) return;

		int screenWidth = mc.getWindow().getGuiScaledWidth();
		int screenHeight = mc.getWindow().getGuiScaledHeight();

		int x = (screenWidth - BAR_WIDTH) / 2;
		int y = (screenHeight - BAR_HEIGHT) / 2;

		float progress = Math.min((float) state.ticks() / MAX_TICKS, 1.0f);
		int filledWidth = (int) (BAR_WIDTH * progress);

		graphics.fill(x, y, x + BAR_WIDTH, y + BAR_HEIGHT, 0xFFFFFFFF);
		graphics.fill(x, y, x + filledWidth, y + BAR_HEIGHT, 0xFFFF0000);

		Font font = mc.font;
		int textWidth = font.width(CANCEL_TEXT);
		int textX = (screenWidth - textWidth) / 2;
		int textY = y + BAR_HEIGHT + 4;
		graphics.text(font, CANCEL_TEXT, textX, textY, 0xFFFFFFFF);
	}
}
