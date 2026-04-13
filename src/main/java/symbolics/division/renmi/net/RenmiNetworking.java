package symbolics.division.renmi.net;

import net.minecraft.network.protocol.common.custom.CustomPacketPayload;
import symbolics.division.renmi.Renmi;

public class RenmiNetworking {
    public static <T extends CustomPacketPayload> CustomPacketPayload.Type<T> createType(final String id) {
        return new CustomPacketPayload.Type<>(Renmi.id(id));
    }
}
