package symbolics.division.renmi;

import net.fabricmc.fabric.api.attachment.v1.AttachmentRegistry;
import net.fabricmc.fabric.api.attachment.v1.AttachmentSyncPredicate;
import net.fabricmc.fabric.api.attachment.v1.AttachmentType;
import symbolics.division.renmi.story.ReadingManager;
import symbolics.division.renmi.story.ReadingState;
import symbolics.division.renmi.story.RenmiLibrary;

public class RenmiAttachments {
    public static final AttachmentType<ReadingState> READING_STATE = AttachmentRegistry.create(
            Renmi.id("reading_state"),
            builder -> builder.initializer(() -> ReadingState.INACTIVE)
                    .syncWith(
                            ReadingState.STREAM_CODEC,
                            AttachmentSyncPredicate.targetOnly()
                    )
    );

    public static final AttachmentType<RenmiLibrary> LIBRARY = AttachmentRegistry.create(
            Renmi.id("library"),
            builder -> builder.initializer(RenmiLibrary::new)
    );

    public static final AttachmentType<ReadingManager> READING_MANAGER = AttachmentRegistry.create(
            Renmi.id("reading_manager"),
            builder -> builder.initializer(ReadingManager::new)
    );

    public static void init() {
    }
}
