package symbolics.division.renmi.net;

import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.network.codec.StreamCodec;
import net.minecraft.network.protocol.common.custom.CustomPacketPayload;

public record S2CDisplayStoryLogPacket(String text) implements CustomPacketPayload {
	public static Type<S2CDisplayStoryLogPacket> TYPE = RenmiNetworking.createType("display_story_log");

	public static final StreamCodec<FriendlyByteBuf, S2CDisplayStoryLogPacket> STREAM_CODEC = CustomPacketPayload.codec(
		(p, b) -> {
			b.writeUtf(p.text);
		},
		(b) -> new S2CDisplayStoryLogPacket(b.readUtf())
	);

	@Override
	public Type<S2CDisplayStoryLogPacket> type() {
		return TYPE;
	}
}
