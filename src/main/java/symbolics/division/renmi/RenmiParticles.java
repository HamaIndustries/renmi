package symbolics.division.renmi;

import com.mojang.serialization.Codec;
import com.mojang.serialization.MapCodec;
import com.mojang.serialization.codecs.RecordCodecBuilder;
import net.fabricmc.fabric.api.particle.v1.FabricParticleTypes;
import net.minecraft.core.Registry;
import net.minecraft.core.particles.ParticleOptions;
import net.minecraft.core.particles.ParticleType;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.network.RegistryFriendlyByteBuf;
import net.minecraft.network.codec.ByteBufCodecs;
import net.minecraft.network.codec.StreamCodec;
import net.minecraft.util.ExtraCodecs;

public class RenmiParticles {

	public static final ParticleType<StoryNodeParticleOptions> STORY_NODE = FabricParticleTypes.complex(
		StoryNodeParticleOptions.CODEC,
		StoryNodeParticleOptions.STREAM_CODEC
	);

	public static void init() {
		Registry.register(BuiltInRegistries.PARTICLE_TYPE, Renmi.id("story_node"), STORY_NODE);
	}

	public record StoryNodeParticleOptions(float diameter, int color) implements ParticleOptions {
		public static final MapCodec<StoryNodeParticleOptions> CODEC = RecordCodecBuilder.mapCodec(
			i -> i.group(
				Codec.FLOAT.fieldOf("diameter").forGetter(StoryNodeParticleOptions::diameter),
				ExtraCodecs.RGB_COLOR_CODEC.fieldOf("color").forGetter(StoryNodeParticleOptions::color)
			).apply(i, StoryNodeParticleOptions::new)
		);

		public static final StreamCodec<RegistryFriendlyByteBuf, StoryNodeParticleOptions> STREAM_CODEC = StreamCodec.composite(
			ByteBufCodecs.FLOAT, StoryNodeParticleOptions::diameter,
			ByteBufCodecs.RGB_COLOR, StoryNodeParticleOptions::color,
			StoryNodeParticleOptions::new
		);

		@Override
		public ParticleType<StoryNodeParticleOptions> getType() {
			return STORY_NODE;
		}
	}
}
