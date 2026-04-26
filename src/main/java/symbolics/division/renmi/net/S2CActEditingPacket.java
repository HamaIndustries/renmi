package symbolics.division.renmi.net;

import net.minecraft.core.BlockPos;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.network.codec.StreamCodec;
import net.minecraft.network.protocol.common.custom.CustomPacketPayload;
import net.minecraft.resources.Identifier;

import java.util.Optional;

public record S2CActEditingPacket(Identifier series, Identifier act, String inkSource,
								  Optional<BlockPos> locus) implements CustomPacketPayload {
	public static Type<S2CActEditingPacket> TYPE = RenmiNetworking.createType("s2c_edit_act");

	public static final StreamCodec<FriendlyByteBuf, S2CActEditingPacket> STREAM_CODEC = CustomPacketPayload.codec(
		(p, b) -> {
			b.writeIdentifier(p.series).writeIdentifier(p.act).writeUtf(p.inkSource).writeOptional(p.locus, BlockPos.STREAM_CODEC);
		},
		(b) -> new S2CActEditingPacket(b.readIdentifier(), b.readIdentifier(), b.readUtf(), b.readOptional(BlockPos.STREAM_CODEC))
	);

	@Override
	public Type<S2CActEditingPacket> type() {
		return TYPE;
	}
}
