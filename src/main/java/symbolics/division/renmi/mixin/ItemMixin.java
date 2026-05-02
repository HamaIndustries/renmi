package symbolics.division.renmi.mixin;

import net.minecraft.world.InteractionHand;
import net.minecraft.world.InteractionResult;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.item.Item;
import net.minecraft.world.level.Level;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfoReturnable;
import symbolics.division.renmi.RenmiDataComponents;

@Mixin(Item.class)
public class ItemMixin {
	@Inject(
		method = "use",
		at = @At("HEAD"),
		cancellable = true
	)
	public void use(final Level level, final Player player, final InteractionHand hand, CallbackInfoReturnable<InteractionResult> ci) {
		InteractionResult result = RenmiDataComponents.injectItemUse((Item) (Object) this, level, player, hand);
		if (result != null) {
			ci.setReturnValue(result);
			ci.cancel();
		}
	}
}
