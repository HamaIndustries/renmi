package symbolics.division.renmi.story;

import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.network.codec.ByteBufCodecs;
import net.minecraft.network.codec.StreamCodec;

import java.util.List;

public record ReadingState(ActLine line, List<ActChoice> choices) {
	public static final StreamCodec<FriendlyByteBuf, ReadingState> STREAM_CODEC = StreamCodec.composite(
			ActLine.STREAM_CODEC, ReadingState::line,
			ActChoice.STREAM_CODEC.apply(ByteBufCodecs.list()), ReadingState::choices,
			ReadingState::new
	);

	public static final ReadingState INACTIVE = new ReadingState(ActLine.INACTIVE, List.of());
}
