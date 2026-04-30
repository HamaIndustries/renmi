package symbolics.division.renmi.net;

import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.network.codec.StreamCodec;
import net.minecraft.network.protocol.common.custom.CustomPacketPayload;

public record S2CStoryCompileErrorPacket(String errorMessage)  implements CustomPacketPayload  {
	public static CustomPacketPayload.Type<S2CStoryCompileErrorPacket> TYPE = RenmiNetworking.createType("s2c_story_compile_error");

	public static final StreamCodec<FriendlyByteBuf, S2CStoryCompileErrorPacket> STREAM_CODEC = CustomPacketPayload.codec(
		(p, b) -> {
			String errorMessage = p.errorMessage();
			b.writeUtf(errorMessage);
		},
		(b) -> new S2CStoryCompileErrorPacket(b.readUtf())
	);
	@Override
	public Type<? extends CustomPacketPayload> type() {
		return TYPE;
	}

}
