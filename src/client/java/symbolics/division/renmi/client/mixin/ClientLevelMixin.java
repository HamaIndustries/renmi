package symbolics.division.renmi.client.mixin;

import net.minecraft.client.Minecraft;
import net.minecraft.client.multiplayer.ClientLevel;
import net.minecraft.world.level.block.Block;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.Shadow;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfoReturnable;
import symbolics.division.renmi.RenmiBlocks;

@Mixin(ClientLevel.class)
public class ClientLevelMixin {
	@Shadow
	private Minecraft minecraft;

	@Inject(
		method = "getMarkerParticleTarget",
		at = @At(value = "INVOKE", target = "Lnet/minecraft/world/item/ItemStack;getItem()Lnet/minecraft/world/item/Item;", shift = At.Shift.AFTER),
		cancellable = true
	)
	public void getLocusParticleTarget(CallbackInfoReturnable<Block> ci) {
		if (minecraft.player.getMainHandItem().getItem().equals(RenmiBlocks.STORY_LOCUS.asItem())) {
			ci.setReturnValue(RenmiBlocks.STORY_LOCUS);
			ci.cancel();
		}
	}
}
