package symbolics.division.renmi.client;

import net.fabricmc.api.ClientModInitializer;
import net.fabricmc.fabric.api.client.event.lifecycle.v1.ClientEntityEvents;
import net.fabricmc.fabric.api.client.networking.v1.ClientPlayNetworking;
import net.minecraft.client.Minecraft;
import net.minecraft.client.player.LocalPlayer;
import symbolics.division.renmi.Renmi;
import symbolics.division.renmi.RenmiAttachments;
import symbolics.division.renmi.client.gui.StoryLocusScreen;
import symbolics.division.renmi.client.gui.StoryScreen;
import symbolics.division.renmi.net.S2CActEditingPacket;
import symbolics.division.renmi.net.S2CDisplayStoryScreenPacket;

public class RenmiClient implements ClientModInitializer {
	@Override
	public void onInitializeClient() {
		Renmi.PROXY = new RenmiClientProxy();

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
				mc.setScreen(new StoryLocusScreen(payload.series(), payload.act(), payload.inkSource(), payload.locus().orElse(null)));
			}
		);


	}
}
