package symbolics.division.renmi.story;

import net.minecraft.core.BlockPos;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.network.codec.ByteBufCodecs;
import net.minecraft.network.codec.StreamCodec;

public record LoadingState(int ticks, BlockPos target) {
	public static final StreamCodec<FriendlyByteBuf, LoadingState> STREAM_CODEC = StreamCodec.composite(
		ByteBufCodecs.INT, LoadingState::ticks,
		BlockPos.STREAM_CODEC, LoadingState::target,
		LoadingState::new
	);

	public static final LoadingState ZERO = new LoadingState(0, BlockPos.ZERO);

	public LoadingState increment() {
		return new LoadingState(this.ticks + 1, this.target);
	}
}
