package symbolics.division.renmi.net;

import net.fabricmc.fabric.api.networking.v1.PayloadTypeRegistry;
import net.fabricmc.fabric.api.networking.v1.ServerPlayNetworking;
import net.minecraft.network.protocol.common.custom.CustomPacketPayload;
import symbolics.division.renmi.Renmi;

public class RenmiNetworking {
	public static <T extends CustomPacketPayload> CustomPacketPayload.Type<T> createType(final String id) {
		return new CustomPacketPayload.Type<>(Renmi.id(id));
	}

	public static void init() {
		PayloadTypeRegistry.serverboundPlay().register(C2SPlayerInputPacket.TYPE, C2SPlayerInputPacket.STREAM_CODEC);
		ServerPlayNetworking.registerGlobalReceiver(C2SPlayerInputPacket.TYPE, C2SPlayerInputPacket::HANDLER);


		PayloadTypeRegistry.clientboundPlay().registerLarge(
			S2CActEditingPacket.TYPE,
			S2CActEditingPacket.STREAM_CODEC,
			9999999
		);

		PayloadTypeRegistry.serverboundPlay().registerLarge(
			C2SActEditingPacket.TYPE,
			C2SActEditingPacket.STREAM_CODEC,
			9999999
		);
		ServerPlayNetworking.registerGlobalReceiver(C2SActEditingPacket.TYPE, C2SActEditingPacket::HANDLER);


		PayloadTypeRegistry.serverboundPlay().register(
			C2SEditStoryLocusPacket.TYPE,
			C2SEditStoryLocusPacket.STREAM_CODEC
		);
		ServerPlayNetworking.registerGlobalReceiver(C2SEditStoryLocusPacket.TYPE, C2SEditStoryLocusPacket::HANDLER);

		PayloadTypeRegistry.clientboundPlay().register(
			S2CDisplayStoryScreenPacket.TYPE, S2CDisplayStoryScreenPacket.STREAM_CODEC
		);

		PayloadTypeRegistry.clientboundPlay().register(
			S2CStoryCompileErrorPacket.TYPE, S2CStoryCompileErrorPacket.STREAM_CODEC
		);
	}
}
