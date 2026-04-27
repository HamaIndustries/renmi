package symbolics.division.renmi.block;

import com.mojang.serialization.MapCodec;
import net.fabricmc.fabric.api.networking.v1.ServerPlayNetworking;
import net.minecraft.core.BlockPos;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.world.InteractionResult;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.block.BaseEntityBlock;
import net.minecraft.world.level.block.entity.BlockEntity;
import net.minecraft.world.level.block.entity.BlockEntityTicker;
import net.minecraft.world.level.block.entity.BlockEntityType;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.phys.BlockHitResult;
import org.jspecify.annotations.Nullable;
import symbolics.division.renmi.RenmiBlocks;
import symbolics.division.renmi.RenmiParticles;
import symbolics.division.renmi.block.entity.StoryLocusBlockEntity;
import symbolics.division.renmi.net.S2CActEditingPacket;
import symbolics.division.renmi.story.Act;
import symbolics.division.renmi.story.RenmiLibrary;
import symbolics.division.renmi.story.Series;

import java.util.Optional;

public class StoryLocusBlock extends BaseEntityBlock {
	public StoryLocusBlock(Properties properties) {
		super(properties);
	}

	@Override
	protected MapCodec<? extends BaseEntityBlock> codec() {
		return simpleCodec(StoryLocusBlock::new);
	}

	@Override
	public @Nullable BlockEntity newBlockEntity(BlockPos pos, BlockState state) {
		return new StoryLocusBlockEntity(pos, state);
	}

	protected InteractionResult useWithoutItem(
		final BlockState state,
		final Level level,
		final BlockPos pos,
		final Player player,
		final BlockHitResult hitResult
	) {
		BlockEntity blockEntity = level.getBlockEntity(pos);

		if (blockEntity instanceof StoryLocusBlockEntity be && player.canUseGameMasterBlocks()) {
			if (!level.isClientSide()) {
				String source = "";
				Series series = RenmiLibrary.get(level.getServer()).getSeries(be.series);
				if (series != null) {
					Act act = series.getAct(be.act);
					if (act != null) {
						source = act.source();
					}
				}
				ServerPlayNetworking.send((ServerPlayer) player, new S2CActEditingPacket(be.series, be.act, source, be.color, Optional.of(be.getBlockPos())));
			}
			return InteractionResult.SUCCESS;
		} else {
			return InteractionResult.PASS;
		}
	}

	@Override
	public @Nullable <T extends BlockEntity> BlockEntityTicker<T> getTicker(Level level, BlockState blockState, BlockEntityType<T> type) {
		return createTickerHelper(type, RenmiBlocks.STORY_LOCUS_ENTITY, StoryLocusBlock::BETick);
	}

	public static void BETick(Level level, BlockPos blockPos, BlockState blockState, StoryLocusBlockEntity be) {
		var opts = new RenmiParticles.StoryNodeParticleOptions(be.diameter, be.color);
		int n = level.getRandom().nextInt(5);
		var c = blockPos.getCenter();
		for (int i = 0; i < n; i++) {
			level.addParticle(opts, c.x, c.y, c.z, 0, 0, 0);
		}
	}
}
