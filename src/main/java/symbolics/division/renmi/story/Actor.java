package symbolics.division.renmi.story;

import com.mojang.serialization.Codec;
import com.mojang.serialization.MapCodec;
import com.mojang.serialization.codecs.RecordCodecBuilder;
import io.netty.buffer.ByteBuf;
import net.minecraft.network.codec.ByteBufCodecs;
import net.minecraft.network.codec.StreamCodec;
import net.minecraft.world.phys.Vec2;

public record Actor(int heightCm, int heightPx, Vec2 origin) {
	public static final MapCodec<Actor> CODEC = RecordCodecBuilder.mapCodec(instance ->
		instance.group(
			Codec.INT.fieldOf("height_cm").forGetter(Actor::heightCm),
			Codec.INT.fieldOf("height_px").forGetter(Actor::heightPx),
			Vec2.CODEC.fieldOf("origin").forGetter(Actor::origin)
		).apply(instance, Actor::new)
	);

	public static final StreamCodec<ByteBuf, Vec2> VEC2 = new StreamCodec<>() {
		public Vec2 decode(final ByteBuf input) {
			return new Vec2(input.readFloat(), input.readFloat());
		}

		public void encode(final ByteBuf output, final Vec2 value) {
			output.writeFloat(value.x);
			output.writeFloat(value.y);
		}
	};

	public static final StreamCodec<ByteBuf, Actor> STREAM_CODEC = StreamCodec.composite(
		ByteBufCodecs.INT, Actor::heightCm,
		ByteBufCodecs.INT, Actor::heightPx,
		VEC2, Actor::origin,
		Actor::new
	);
}
