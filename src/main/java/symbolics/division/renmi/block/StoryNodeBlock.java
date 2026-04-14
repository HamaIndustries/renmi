package symbolics.division.renmi.block;

import com.mojang.serialization.MapCodec;
import net.minecraft.core.BlockPos;
import net.minecraft.world.InteractionResult;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.block.BaseEntityBlock;
import net.minecraft.world.level.block.entity.BlockEntity;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.phys.BlockHitResult;
import org.jspecify.annotations.Nullable;
import symbolics.division.renmi.Renmi;
import symbolics.division.renmi.block.entity.StoryNodeBlockEntity;

public class StoryNodeBlock extends BaseEntityBlock {
	public StoryNodeBlock(Properties properties) {
		super(properties);
	}

	@Override
	protected MapCodec<? extends BaseEntityBlock> codec() {
		return simpleCodec(StoryNodeBlock::new);
	}

	@Override
	public @Nullable BlockEntity newBlockEntity(BlockPos pos, BlockState state) {
		return new StoryNodeBlockEntity(pos, state);
	}

	protected InteractionResult useWithoutItem(
		final BlockState state,
		final Level level,
		final BlockPos pos,
		final Player player,
		final BlockHitResult hitResult
	) {
		BlockEntity blockEntity = level.getBlockEntity(pos);

		if (blockEntity instanceof StoryNodeBlockEntity be && player.canUseGameMasterBlocks()) {
			if (level.isClientSide()) {
				Renmi.PROXY.openStoryNodeScreen(be);
			}
			return InteractionResult.SUCCESS;
		} else {
			return InteractionResult.PASS;
		}
	}
}
