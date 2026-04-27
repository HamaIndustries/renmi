package symbolics.division.renmi.net;

import net.fabricmc.fabric.api.networking.v1.ServerPlayNetworking;
import net.minecraft.core.BlockPos;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.network.codec.StreamCodec;
import net.minecraft.network.protocol.common.custom.CustomPacketPayload;
import net.minecraft.resources.Identifier;
import symbolics.division.renmi.RenmiBlocks;

public record C2SEditStoryLocusPacket(BlockPos pos, Identifier series, Identifier act,
									  float diameter, int color) implements CustomPacketPayload {
	// we send the story edit packet vs locus edit packet separately since we sometimes want
	// to edit the story without a specific locus associated with it.

	public static Type<C2SEditStoryLocusPacket> TYPE = RenmiNetworking.createType("edit_story_locus");

	public static final StreamCodec<FriendlyByteBuf, C2SEditStoryLocusPacket> STREAM_CODEC = CustomPacketPayload.codec(
		(p, b) -> {
			b.writeBlockPos(p.pos).writeIdentifier(p.series).writeIdentifier(p.act).writeFloat(p.diameter).writeInt(p.color);
		},
		(b) -> new C2SEditStoryLocusPacket(b.readBlockPos(), b.readIdentifier(), b.readIdentifier(), b.readFloat(), b.readInt())
	);

	public static void HANDLER(C2SEditStoryLocusPacket payload, ServerPlayNetworking.Context context) {
		var player = context.player();

		if (!player.canUseGameMasterBlocks() || player.distanceToSqr(payload.pos.getCenter()) > (12 * 12)) {
			return;
		}

		var maybeBe = player.level().getBlockEntity(payload.pos, RenmiBlocks.STORY_LOCUS_ENTITY);
		if (maybeBe.isPresent()) {
			var be = maybeBe.get();
			be.setValues(payload.series, payload.act, payload.diameter, payload.color);
		}
	}

	@Override
	public Type<? extends CustomPacketPayload> type() {
		return TYPE;
	}
}
