package symbolics.division.renmi.client.mixin;


import net.minecraft.client.entity.ClientAvatarEntity;
import net.minecraft.client.model.player.PlayerModel;
import net.minecraft.client.renderer.entity.EntityRendererProvider;
import net.minecraft.client.renderer.entity.LivingEntityRenderer;
import net.minecraft.client.renderer.entity.player.AvatarRenderer;
import net.minecraft.client.renderer.entity.state.AvatarRenderState;
import net.minecraft.world.entity.Avatar;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;
import symbolics.division.renmi.ReadingPlayer;
import symbolics.division.renmi.client.ReadingPlayerRenderState;
import symbolics.division.renmi.client.renderer.entity.layers.StoryIconLayer;

@Mixin(AvatarRenderer.class)
public abstract class AvatarRendererMixin<AvatarlikeEntity extends Avatar & ClientAvatarEntity> extends LivingEntityRenderer {
	public AvatarRendererMixin(EntityRendererProvider.Context context, PlayerModel model, float shadow) {
		super(context, model, shadow);
	}

	@Inject(method = "<init>", at = @At("RETURN"))
	public void addStoryIconRenderLayer(EntityRendererProvider.Context context, boolean slimSteve, CallbackInfo ci){
		this.addLayer(new StoryIconLayer(this));
	}

	@Inject(method = "extractRenderState", at = @At("TAIL"))
	public void extractReadingToRenderState(AvatarlikeEntity entity, AvatarRenderState state, float partialTicks, CallbackInfo ci){
		if(entity != null) {
			boolean isReading = ((ReadingPlayer)entity).isReading();
			((ReadingPlayerRenderState)state).setReading(isReading);
		}
	}

}
