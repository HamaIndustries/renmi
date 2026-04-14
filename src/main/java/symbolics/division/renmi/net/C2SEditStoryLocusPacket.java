package symbolics.division.renmi.net;

import net.fabricmc.fabric.api.networking.v1.ServerPlayNetworking;
import net.minecraft.core.BlockPos;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.network.codec.StreamCodec;
import net.minecraft.network.protocol.common.custom.CustomPacketPayload;
import net.minecraft.resources.Identifier;
import symbolics.division.renmi.RenmiBlocks;

public record C2SEditStoryLocusPacket(BlockPos pos, Identifier act, float diameter) implements CustomPacketPayload {
	public static Type<C2SEditStoryLocusPacket> TYPE = RenmiNetworking.createType("edit_story_locus");

	public static final StreamCodec<FriendlyByteBuf, C2SEditStoryLocusPacket> STREAM_CODEC = CustomPacketPayload.codec(
		(p, b) -> {
			b.writeBlockPos(p.pos).writeIdentifier(p.act).writeFloat(p.diameter);
		},
		(b) -> new C2SEditStoryLocusPacket(b.readBlockPos(), b.readIdentifier(), b.readFloat())
	);

	public static void HANDLER(C2SEditStoryLocusPacket payload, ServerPlayNetworking.Context context) {
		var player = context.player();

		if (!player.canUseGameMasterBlocks() || player.distanceToSqr(payload.pos.getCenter()) > (12 * 12)) {
			return;
		}

		var maybeBe = player.level().getBlockEntity(payload.pos, RenmiBlocks.STORY_LOCUS_ENTITY);
		if (maybeBe.isPresent()) {
			var be = maybeBe.get();
			be.act = payload.act;
			be.diameter = payload.diameter;
			be.setChanged();
		}
	}

	@Override
	public Type<? extends CustomPacketPayload> type() {
		return TYPE;
	}
}
