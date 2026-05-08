package symbolics.division.renmi.net;

import net.fabricmc.fabric.api.networking.v1.ServerPlayNetworking;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.network.codec.StreamCodec;
import net.minecraft.network.protocol.common.custom.CustomPacketPayload;
import symbolics.division.renmi.ReadingPlayer;

public record C2SPlayerReadingPacket(boolean reading) implements CustomPacketPayload{
	public static CustomPacketPayload.Type<C2SPlayerReadingPacket> TYPE = RenmiNetworking.createType("reading");

	public static final StreamCodec<FriendlyByteBuf, C2SPlayerReadingPacket> STREAM_CODEC = CustomPacketPayload.codec(
		(p, b) -> {
			b.writeBoolean(p.reading);
		},
		(b) -> new C2SPlayerReadingPacket(b.readBoolean())
	);

	public static void HANDLER(C2SPlayerReadingPacket payload, ServerPlayNetworking.Context context) {
		((ReadingPlayer)context.player()).setReading(payload.reading());
	}

	@Override
	public CustomPacketPayload.Type<C2SPlayerReadingPacket> type() {
		return TYPE;
	}
}
