package symbolics.division.renmi.story;

import net.minecraft.core.BlockPos;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.network.codec.ByteBufCodecs;
import net.minecraft.network.codec.StreamCodec;

public record LoadingState(long ticks, BlockPos target, boolean cancelled) {
	public static final StreamCodec<FriendlyByteBuf, LoadingState> STREAM_CODEC = StreamCodec.composite(
		ByteBufCodecs.LONG, LoadingState::ticks,
		BlockPos.STREAM_CODEC, LoadingState::target,
		ByteBufCodecs.BOOL, LoadingState::cancelled,
		LoadingState::new
	);

	public LoadingState(long ticks, BlockPos target) {
		this(ticks, target, false);
	}

	public static int MAX_TICKS = 40; // probably replace with a config value later?

	public long getElapsed(long ticks) {
		return ticks - this.ticks;
	}

	public boolean isLoaded(long ticks) {
		return getElapsed(ticks) > MAX_TICKS;
	}

	public LoadingState cancel() {
		return new LoadingState(ticks, target, true);
	}
}
