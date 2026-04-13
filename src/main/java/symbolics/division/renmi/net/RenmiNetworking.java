package symbolics.division.renmi.net;

import net.fabricmc.fabric.api.attachment.v1.AttachmentRegistry;
import net.fabricmc.fabric.api.attachment.v1.AttachmentSyncPredicate;
import net.fabricmc.fabric.api.attachment.v1.AttachmentType;
import net.minecraft.network.protocol.common.custom.CustomPacketPayload;
import symbolics.division.renmi.Renmi;
import symbolics.division.renmi.story.ReadingState;

public class RenmiNetworking {
    public static <T extends CustomPacketPayload> CustomPacketPayload.Type<T> createType(final String id) {
        return new CustomPacketPayload.Type<>(Renmi.id(id));
    }

    public static class Attachments {
        public static final AttachmentType<ReadingState> READING_STATE = AttachmentRegistry.create(
                Renmi.id("reading_state"),
                builder -> builder.initializer(() -> ReadingState.INACTIVE)
                        .syncWith(
                                ReadingState.STREAM_CODEC,
                                AttachmentSyncPredicate.targetOnly()
                        )
        );
    }
}
