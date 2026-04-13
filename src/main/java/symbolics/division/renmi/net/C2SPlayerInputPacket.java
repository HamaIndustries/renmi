package symbolics.division.renmi.net;

import net.fabricmc.fabric.api.networking.v1.ServerPlayNetworking;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.network.codec.StreamCodec;
import net.minecraft.network.protocol.common.custom.CustomPacketPayload;
import symbolics.division.renmi.story.ReadingManager;

public record C2SPlayerInputPacket(int index) implements CustomPacketPayload {
    public static CustomPacketPayload.Type<C2SPlayerInputPacket> TYPE = RenmiNetworking.createType("betraying");

    public static final StreamCodec<FriendlyByteBuf, C2SPlayerInputPacket> STREAM_CODEC = CustomPacketPayload.codec(
            (p, b) -> {
                b.writeInt(p.index);
            },
            (b) -> new C2SPlayerInputPacket(b.readInt())
    );

    public static void HANDLER(C2SPlayerInputPacket payload, ServerPlayNetworking.Context context) {
        ReadingManager manager = ReadingManager.getManager(context.server());
        if (payload.index() == -1) {
            manager.readingProceed(context.player());
        } else {
            manager.readingChoice(context.player(), payload.index());
        }
    }

    @Override
    public Type<C2SPlayerInputPacket> type() {
        return TYPE;
    }
}
