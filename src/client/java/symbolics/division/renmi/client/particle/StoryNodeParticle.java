package symbolics.division.renmi.client.particle;

import dev.chailotl.bento_util.Color;
import net.minecraft.client.multiplayer.ClientLevel;
import net.minecraft.client.particle.Particle;
import net.minecraft.client.particle.ParticleProvider;
import net.minecraft.client.particle.SingleQuadParticle;
import net.minecraft.client.particle.SpriteSet;
import net.minecraft.client.renderer.texture.TextureAtlasSprite;
import net.minecraft.util.Mth;
import net.minecraft.util.RandomSource;
import symbolics.division.renmi.RenmiParticles;

public class StoryNodeParticle extends SingleQuadParticle {
	private float angle;
	private double diameter;
	private boolean start = false;
	private float ya;
	private float ys = 0.01f;
	private float rollspeed;


	protected StoryNodeParticle(ClientLevel level, double x, double y, double z, double xa, double ya, double za, TextureAtlasSprite sprite, RenmiParticles.StoryNodeParticleOptions options) {
		super(level, x, y, z, xa, ya, za, sprite);
		angle = this.random.nextFloat() * Mth.TWO_PI;
		this.diameter = options.diameter();
		this.rollspeed = (float) (0.05 * diameter);
		this.hasPhysics = false;
		this.friction = 0;
		this.gravity = 0;
		this.alpha = 0;
		this.lifetime = this.random.nextIntBetweenInclusive(50, 60);
		this.scale(0.7f);
		Color c = Color.ofRgb(options.color());
		this.setColor(c.red(), c.green(), c.blue());
		this.ya = 0.0001f + this.random.nextFloat() * 0.0005f;
		this.roll = 0.1f;
	}

	@Override
	protected Layer getLayer() {
		return Layer.TRANSLUCENT;
	}

	@Override
	public void tick() {
		if (!start) {
			// I'm going freaking insane
			// idk what the logic is for particle self setting
			// so here we are
			// sorry lol
			start = true;
			this.setPos(x + Mth.cos(angle) * diameter, y, z + Mth.sin(angle) * diameter);
			this.alpha = 1;
			angle += Mth.HALF_PI;
		}
		this.alpha = Mth.clamp(1 - ((float) this.age / (float) this.lifetime), 0, 1);
		angle += 0.024f;
		float speed = 0.1f;
		ys += ya;
		this.setParticleSpeed(Mth.cos(angle) * speed, ys, Mth.sin(angle) * speed);
		super.tick();
	}

	public static class Provider implements ParticleProvider<RenmiParticles.StoryNodeParticleOptions> {
		private final SpriteSet sprites;

		public Provider(final SpriteSet sprites) {
			this.sprites = sprites;
		}

		public Particle createParticle(
			final RenmiParticles.StoryNodeParticleOptions options,
			final ClientLevel level,
			final double x,
			final double y,
			final double z,
			final double xAux,
			final double yAux,
			final double zAux,
			final RandomSource random
		) {
			return new StoryNodeParticle(level, x, y, z, xAux, yAux, zAux, sprites.get(random), options);
		}
	}
}
