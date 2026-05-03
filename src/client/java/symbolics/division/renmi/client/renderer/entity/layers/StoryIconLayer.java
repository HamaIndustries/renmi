package symbolics.division.renmi.client.renderer.entity.layers;

import com.mojang.blaze3d.vertex.PoseStack;
import com.mojang.math.Axis;
import net.minecraft.client.Minecraft;
import net.minecraft.client.model.EntityModel;
import net.minecraft.client.player.LocalPlayer;
import net.minecraft.client.renderer.SubmitNodeCollector;
import net.minecraft.client.renderer.entity.RenderLayerParent;
import net.minecraft.client.renderer.entity.layers.RenderLayer;
import net.minecraft.client.renderer.entity.state.HumanoidRenderState;
import net.minecraft.client.renderer.item.ItemModelResolver;
import net.minecraft.client.renderer.item.ItemStackRenderState;
import net.minecraft.client.renderer.texture.OverlayTexture;
import net.minecraft.world.item.ItemDisplayContext;
import net.minecraft.world.item.ItemStack;
import symbolics.division.renmi.RenmiBlocks;
import symbolics.division.renmi.client.ReadingPlayerRenderState;

public class StoryIconLayer<S extends HumanoidRenderState, M extends EntityModel<S>> extends RenderLayer<S, M> {
	public StoryIconLayer(RenderLayerParent<S, M> renderer) {
		super(renderer);
	}

	@Override
	public void submit(PoseStack poseStack, SubmitNodeCollector submitNodeCollector, int lightCoords, S state, float yRot, float xRot) {
		ItemStackRenderState itemRenderState = new ItemStackRenderState();

		if((((ReadingPlayerRenderState)state).isReading())) {
			ItemModelResolver resolver = Minecraft.getInstance().getItemModelResolver();
			LocalPlayer player = Minecraft.getInstance().player;
			resolver.updateForTopItem(
				itemRenderState,
				new ItemStack(RenmiBlocks.STORY_LOCUS.asItem()),
				ItemDisplayContext.GROUND,
				player.level(),
				null,
				0
			);

			if (itemRenderState.isEmpty()) return;

			poseStack.pushPose();

			poseStack.translate(0.0, -1.15, 0.0);
			poseStack.mulPose(Axis.XP.rotationDegrees(180));
			itemRenderState.submit(poseStack, submitNodeCollector, state.lightCoords, OverlayTexture.NO_OVERLAY, 0);
			poseStack.popPose();
		}
	}
}
