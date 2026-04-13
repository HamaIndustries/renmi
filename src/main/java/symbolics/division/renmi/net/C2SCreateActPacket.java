package symbolics.division.renmi.net;

import net.fabricmc.fabric.api.networking.v1.ServerPlayNetworking;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.network.codec.StreamCodec;
import net.minecraft.network.protocol.common.custom.CustomPacketPayload;
import net.minecraft.resources.Identifier;
import symbolics.division.renmi.Renmi;
import symbolics.division.renmi.RenmiAttachments;
import symbolics.division.renmi.story.RenmiLibrary;

public record C2SCreateActPacket(Identifier series, Identifier act, String inkSource) implements CustomPacketPayload {
	public static Type<C2SCreateActPacket> TYPE = RenmiNetworking.createType("create_act");

	public static final StreamCodec<FriendlyByteBuf, C2SCreateActPacket> STREAM_CODEC = CustomPacketPayload.codec(
			(p, b) -> {
				b.writeIdentifier(p.series).writeIdentifier(p.act).writeUtf(p.inkSource);
			},
			(b) -> new C2SCreateActPacket(b.readIdentifier(), b.readIdentifier(), b.readUtf())
	);

	public static void HANDLER(C2SCreateActPacket payload, ServerPlayNetworking.Context context) {
		try {
			context.server().globalAttachments().getAttachedOrCreate(RenmiAttachments.LIBRARY).createActFromSource(
					payload.series(),
					payload.act(),
					payload.inkSource()
			);
		} catch (RenmiLibrary.RenmiCompilationFailed e) {
			Renmi.LOGGER.info("Failed to create act {}, series {}, from source script!", payload.act(), payload.series());
			e.printStackTrace();
		}
	}

	@Override
	public Type<C2SCreateActPacket> type() {
		return TYPE;
	}
}
