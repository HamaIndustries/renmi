package symbolics.division.renmi.client;

import dev.chailotl.bento_util.Color;
import net.fabricmc.api.ClientModInitializer;
import net.fabricmc.fabric.api.client.event.lifecycle.v1.ClientEntityEvents;
import net.fabricmc.fabric.api.client.event.lifecycle.v1.ClientTickEvents;
import net.fabricmc.fabric.api.client.networking.v1.ClientPlayNetworking;
import net.fabricmc.fabric.api.client.particle.v1.ParticleProviderRegistry;
import net.fabricmc.fabric.api.client.rendering.v1.hud.HudElementRegistry;
import net.fabricmc.fabric.api.client.rendering.v1.hud.VanillaHudElements;
import net.minecraft.client.DeltaTracker;
import net.minecraft.client.Minecraft;
import net.minecraft.client.gui.Font;
import net.minecraft.client.gui.GuiGraphicsExtractor;
import net.minecraft.client.player.LocalPlayer;
import net.minecraft.network.chat.Component;
import net.minecraft.resources.Identifier;
import symbolics.division.renmi.Renmi;
import symbolics.division.renmi.RenmiAttachments;
import symbolics.division.renmi.RenmiParticles;
import symbolics.division.renmi.client.gui.StoryLocusScreen;
import symbolics.division.renmi.client.gui.StoryLogScreen;
import symbolics.division.renmi.client.gui.StoryScreen;
import symbolics.division.renmi.client.particle.StoryNodeParticle;
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
							payload.rgb(),
							payload.intensity()
					));
				}
		);

		ClientPlayNetworking.registerGlobalReceiver(
				S2CDisplayStoryLogPacket.TYPE,
				(payload, context) -> Minecraft.getInstance().setScreen(new StoryLogScreen(payload.text()))
		);

		ClientPlayNetworking.registerGlobalReceiver(
				S2CStoryCompileErrorPacket.TYPE, (s2CStoryCompileErrorPacket, context) -> {
					var mc = Minecraft.getInstance();
					if (mc.screen instanceof StoryLocusScreen screen) {
						screen.setErrorMessage(s2CStoryCompileErrorPacket.errorMessage());
					}
				}
		);

		ParticleProviderRegistry.getInstance().register(RenmiParticles.STORY_NODE, StoryNodeParticle.Provider::new);

		//Progress Bar Rendering
		HudElementRegistry.attachElementBefore(
				VanillaHudElements.BOSS_BAR,
				Identifier.fromNamespaceAndPath(Renmi.MOD_ID, "progress_bar"),
				RenmiClient::renderProgressBar
		);

		// every 5 seconds, try to resolve broken reading state
		ClientTickEvents.START_LEVEL_TICK.register(clientLevel -> {
			if (clientLevel.getGameTime() % (5 * 20) != 0) return;
			var screen = Minecraft.getInstance().screen;
			if (screen instanceof StoryScreen || screen instanceof StoryLogScreen) return;
			ClientPlayNetworking.send(new C2SPlayerReadingPacket(false));
		});
	}

	private static void renderProgressBar(GuiGraphicsExtractor graphics, DeltaTracker deltaTracker) {
		final int BAR_WIDTH = 48;
		final int BAR_HEIGHT = 2;

		Minecraft mc = Minecraft.getInstance();
		LocalPlayer player = mc.player;
		if (player == null) {
			return;
		}

		LoadingState state = player.getAttached(RenmiAttachments.LOADING_STATE);
		if (state == null || state.cancelled()) {
			return;
		}

		String text = Component.translatable("gui.renmi.press_crouch_to_canel").getString();
		int screenWidth = mc.getWindow().getGuiScaledWidth();
		int screenHeight = mc.getWindow().getGuiScaledHeight();

		int x = (screenWidth - BAR_WIDTH) / 2;
		int y = (screenHeight - BAR_HEIGHT) / 2 + 12;

		float ticks = state.getElapsed(mc.level.getGameTime()) + deltaTracker.getGameTimeDeltaPartialTick(false);
		float progress = Math.min(ticks / LoadingState.MAX_TICKS, 1.0f);
		int filledWidth = (int) (BAR_WIDTH * progress);

		graphics.fill(x, y, x + BAR_WIDTH, y + BAR_HEIGHT, Color.BLACK.argb());
		graphics.fill(x, y, x + filledWidth, y + BAR_HEIGHT, Color.GREEN.argb());

		Font font = mc.font;
		int textWidth = font.width(text);
		int textX = (screenWidth - textWidth) / 2;
		int textY = y + BAR_HEIGHT + 4;
		graphics.text(font, text, textX, textY, 0xFFFFFFFF);
	}
}
