package symbolics.division.renmi.net;

import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.network.codec.StreamCodec;
import net.minecraft.network.protocol.common.custom.CustomPacketPayload;
import net.minecraft.resources.Identifier;

public record S2CActEditingPacket(Identifier series, Identifier act, String inkSource) implements CustomPacketPayload {
    public static Type<S2CActEditingPacket> TYPE = RenmiNetworking.createType("act_editing");

    public static final StreamCodec<FriendlyByteBuf, S2CActEditingPacket> STREAM_CODEC = CustomPacketPayload.codec(
            (p, b) -> {
                b.writeIdentifier(p.series).writeIdentifier(p.act).writeUtf(p.inkSource);
            },
            (b) -> new S2CActEditingPacket(b.readIdentifier(), b.readIdentifier(), b.readUtf())
    );

    @Override
    public Type<S2CActEditingPacket> type() {
        return TYPE;
    }
}
