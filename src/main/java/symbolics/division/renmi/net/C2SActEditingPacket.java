package symbolics.division.renmi.net;

import net.fabricmc.fabric.api.networking.v1.ServerPlayNetworking;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.network.codec.StreamCodec;
import net.minecraft.network.protocol.common.custom.CustomPacketPayload;
import net.minecraft.resources.Identifier;
import symbolics.division.renmi.Renmi;
import symbolics.division.renmi.RenmiAttachments;
import symbolics.division.renmi.story.RenmiLibrary;

public record C2SActEditingPacket(Identifier series, Identifier act, String inkSource) implements CustomPacketPayload {
	public static Type<C2SActEditingPacket> TYPE = RenmiNetworking.createType("c2s_edit_act");

	public static final StreamCodec<FriendlyByteBuf, C2SActEditingPacket> STREAM_CODEC = CustomPacketPayload.codec(
		(p, b) -> {
			b.writeIdentifier(p.series).writeIdentifier(p.act).writeUtf(p.inkSource);
		},
		(b) -> new C2SActEditingPacket(b.readIdentifier(), b.readIdentifier(), b.readUtf())
	);

	public static void HANDLER(C2SActEditingPacket payload, ServerPlayNetworking.Context context) {
		try {
			context.server().globalAttachments().getAttachedOrCreate(RenmiAttachments.LIBRARY).createActFromSource(
				payload.series(),
				payload.act(),
				payload.inkSource()
			);
		} catch (RenmiLibrary.RenmiCompilationFailed e) {
			Renmi.LOGGER.debug(
				"Failed to create act {}, series {}, from source script!",
				payload.act(),
				payload.series()
			);
			if (Renmi.LOGGER.isDebugEnabled()) {
				e.printStackTrace();
			}
			ServerPlayNetworking.send(
				context.player(),
				new S2CStoryCompileErrorPacket(e.getMessage())
			);
		}
	}

	@Override
	public Type<C2SActEditingPacket> type() {
		return TYPE;
	}
}
