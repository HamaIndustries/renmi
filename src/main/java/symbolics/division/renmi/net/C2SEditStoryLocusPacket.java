package symbolics.division.renmi.net;

import net.fabricmc.fabric.api.networking.v1.ServerPlayNetworking;
import net.minecraft.core.BlockPos;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.network.codec.StreamCodec;
import net.minecraft.network.protocol.common.custom.CustomPacketPayload;
import net.minecraft.resources.Identifier;
import symbolics.division.renmi.Renmi;
import symbolics.division.renmi.RenmiBlocks;
import symbolics.division.renmi.story.RenmiLibrary;

public record C2SEditStoryLocusPacket(BlockPos pos, Identifier series, Identifier act, float diameter,
									  String text) implements CustomPacketPayload {
	public static Type<C2SEditStoryLocusPacket> TYPE = RenmiNetworking.createType("edit_story_locus");

	public static final StreamCodec<FriendlyByteBuf, C2SEditStoryLocusPacket> STREAM_CODEC = CustomPacketPayload.codec(
		(p, b) -> {
			b.writeBlockPos(p.pos).writeIdentifier(p.series).writeIdentifier(p.act).writeFloat(p.diameter).writeUtf(p.text);
		},
		(b) -> new C2SEditStoryLocusPacket(b.readBlockPos(), b.readIdentifier(), b.readIdentifier(), b.readFloat(), b.readUtf())
	);

	public static void HANDLER(C2SEditStoryLocusPacket payload, ServerPlayNetworking.Context context) {
		var player = context.player();

		if (!player.canUseGameMasterBlocks() || player.distanceToSqr(payload.pos.getCenter()) > (12 * 12)) {
			return;
		}

		var maybeBe = player.level().getBlockEntity(payload.pos, RenmiBlocks.STORY_LOCUS_ENTITY);
		if (maybeBe.isPresent()) {
			var be = maybeBe.get();
			be.series = payload.series;
			be.act = payload.act;
			be.diameter = payload.diameter;
			be.setChanged();

			var library = RenmiLibrary.get(context.server());
			try {
				library.createActFromSource(payload.series, payload.act, payload.text);
			} catch (RenmiLibrary.RenmiCompilationFailed e) {
				Renmi.LOGGER.error("failed to compile story", e); //FIXME give a response
			}

		}
	}

	@Override
	public Type<? extends CustomPacketPayload> type() {
		return TYPE;
	}
}
