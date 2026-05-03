package symbolics.division.renmi.client.mixin;


import net.minecraft.client.renderer.entity.state.AvatarRenderState;
import org.spongepowered.asm.mixin.Mixin;
import symbolics.division.renmi.client.ReadingPlayerRenderState;

@Mixin(AvatarRenderState.class)
public class AvatarRenderStateMixin implements ReadingPlayerRenderState {

	private boolean reading = false;
	@Override
	public void setReading(boolean reading) {
		this.reading = reading;
	}

	@Override
	public boolean isReading() {
		return reading;
	}

}
