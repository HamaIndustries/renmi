package symbolics.division.renmi.net;

import net.fabricmc.fabric.api.networking.v1.ServerPlayNetworking;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.network.codec.StreamCodec;
import net.minecraft.network.protocol.common.custom.CustomPacketPayload;
import symbolics.division.renmi.story.ReadingManager;

public record C2SRequestStoryLogPacket() implements CustomPacketPayload {
	public static Type<C2SRequestStoryLogPacket> TYPE = RenmiNetworking.createType("request_story_log");

	public static final StreamCodec<FriendlyByteBuf, C2SRequestStoryLogPacket> STREAM_CODEC = CustomPacketPayload.codec(
		(p, b) -> {
		},
		(b) -> new C2SRequestStoryLogPacket()
	);

	public static void HANDLER(C2SRequestStoryLogPacket payload, ServerPlayNetworking.Context context) {
		ReadingManager manager = ReadingManager.getManager(context.server());
		var reading = manager.getActiveReading(context.player());
		if (reading != null) {
			ServerPlayNetworking.send(context.player(), new S2CDisplayStoryLogPacket(reading.text()));
		}
	}

	@Override
	public Type<C2SRequestStoryLogPacket> type() {
		return TYPE;
	}
}
