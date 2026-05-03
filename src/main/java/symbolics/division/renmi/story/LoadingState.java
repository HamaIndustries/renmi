package symbolics.division.renmi.story;

import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.network.codec.ByteBufCodecs;
import net.minecraft.network.codec.StreamCodec;

public record LoadingState(int ticks, int blockEntityId) {
	public static final StreamCodec<FriendlyByteBuf, LoadingState> STREAM_CODEC = StreamCodec.composite(
		ByteBufCodecs.INT, LoadingState::ticks,
		ByteBufCodecs.INT, LoadingState::blockEntityId,
		LoadingState::new
	);

	public static final LoadingState ZERO = new LoadingState(0, 0);

	public LoadingState increment() {
		return new LoadingState(this.ticks + 1, this.blockEntityId);
	}

	public LoadingState loadingStateWithBlockEntityId(int id){
		return new LoadingState(this.ticks, id);
	}
}
