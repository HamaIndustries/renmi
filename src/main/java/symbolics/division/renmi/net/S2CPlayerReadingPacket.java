package symbolics.division.renmi.net;

import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.network.codec.StreamCodec;
import net.minecraft.network.protocol.common.custom.CustomPacketPayload;

public record S2CPlayerReadingPacket(int playerId, boolean reading) implements CustomPacketPayload {
	public static CustomPacketPayload.Type<S2CPlayerReadingPacket> TYPE = RenmiNetworking.createType("s2c_story_reading");

	public static final StreamCodec<FriendlyByteBuf, S2CPlayerReadingPacket> STREAM_CODEC = CustomPacketPayload.codec(
		(p, b) -> {
			b.writeInt(p.playerId());
			b.writeBoolean(p.reading());
		},
		(b) -> new S2CPlayerReadingPacket(b.readInt(), b.readBoolean())
	);
	@Override
	public CustomPacketPayload.Type<? extends CustomPacketPayload> type() {
		return TYPE;
	}
}
