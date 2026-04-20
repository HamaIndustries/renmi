package symbolics.division.renmi.net;

import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.network.codec.StreamCodec;
import net.minecraft.network.protocol.common.custom.CustomPacketPayload;

public record S2CDisplayStoryScreenPacket() implements CustomPacketPayload {
	public static Type<S2CDisplayStoryScreenPacket> TYPE = RenmiNetworking.createType("display_story_screen");

	public static final StreamCodec<FriendlyByteBuf, S2CDisplayStoryScreenPacket> STREAM_CODEC = CustomPacketPayload.codec(
		(p, b) -> {
		},
		(b) -> new S2CDisplayStoryScreenPacket()
	);

	@Override
	public Type<S2CDisplayStoryScreenPacket> type() {
		return TYPE;
	}
}
