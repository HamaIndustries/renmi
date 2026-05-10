package symbolics.division.renmi.block;

import com.mojang.serialization.MapCodec;
import net.fabricmc.fabric.api.networking.v1.ServerPlayNetworking;
import net.minecraft.core.BlockPos;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.world.InteractionResult;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.BlockGetter;
import net.minecraft.world.level.Level;
import net.minecraft.world.level.block.BaseEntityBlock;
import net.minecraft.world.level.block.RenderShape;
import net.minecraft.world.level.block.entity.BlockEntity;
import net.minecraft.world.level.block.entity.BlockEntityTicker;
import net.minecraft.world.level.block.entity.BlockEntityType;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.phys.BlockHitResult;
import net.minecraft.world.phys.Vec3;
import net.minecraft.world.phys.shapes.CollisionContext;
import net.minecraft.world.phys.shapes.Shapes;
import net.minecraft.world.phys.shapes.VoxelShape;
import org.jspecify.annotations.Nullable;
import symbolics.division.renmi.Renmi;
import symbolics.division.renmi.RenmiAttachments;
import symbolics.division.renmi.RenmiBlocks;
import symbolics.division.renmi.RenmiParticles;
import symbolics.division.renmi.block.entity.StoryLocusBlockEntity;
import symbolics.division.renmi.net.S2CActEditingPacket;
import symbolics.division.renmi.net.S2CDisplayStoryScreenPacket;
import symbolics.division.renmi.story.*;
import symbolics.division.renmi.util.RenmiExceptions;

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
				ServerPlayNetworking.send(
					(ServerPlayer) player,
					new S2CActEditingPacket(be.series, be.act, source, be.color, be.intensity, Optional.of(be.getBlockPos()))
				);
			}
			return InteractionResult.SUCCESS;
		} else {
			return InteractionResult.PASS;
		}
	}

	@Override
	public @Nullable <T extends BlockEntity> BlockEntityTicker<T> getTicker(
		Level level,
		BlockState blockState,
		BlockEntityType<T> type
	) {
		return createTickerHelper(type, RenmiBlocks.STORY_LOCUS_ENTITY, StoryLocusBlock::BETick);
	}

	public static void BETick(Level level, BlockPos blockPos, BlockState blockState, StoryLocusBlockEntity be) {
		if (level instanceof ServerLevel sv && level.getGameTime() % 2 == 0 && be instanceof StoryLocusBlockEntity locus) {
			ReadingManager manager = ReadingManager.getManager(level.getServer());
			RenmiLibrary library = RenmiLibrary.get(level.getServer());
			Series series = library.getSeries(locus.series);
			if (series == null) {
				return;
			}
			Act act = series.getAct(locus.act);
			if (act == null) {
				return;
			}

			Vec3 c = blockPos.getCenter();
			var opts = new RenmiParticles.StoryNodeParticleOptions(be.diameter, be.color);

			if (be.intensity > 0) {
				int n = level.getRandom().nextInt(be.intensity);
				for (ServerPlayer player : ((ServerLevel) level).getPlayers(
					player -> !player.hasAttached(RenmiAttachments.READING_STATE)
						&& player.distanceToSqr(c) < 250
						&& act.startConditionsMet(player, manager.createOrLoad(player, series)))
				) {
					for (int i = 0; i < n; i++) {
						sv.sendParticles(player, opts, true, true, c.x, c.y, c.z, n, 0.1, 0.1, 0.1, 0);
					}
					if (player.distanceToSqr(c) <= be.diameter * be.diameter && !player.isHolding(RenmiBlocks.STORY_LOCUS.asItem())) {
						declareThisBlockNear(player, blockPos);
					}
				}
			}
		}
	}

	@Override
	protected RenderShape getRenderShape(BlockState state) {
		return RenderShape.INVISIBLE;
	}

	@Override
	protected VoxelShape getShape(BlockState state, BlockGetter level, BlockPos pos, CollisionContext context) {
		return context.isHoldingItem(RenmiBlocks.STORY_LOCUS.asItem()) ? Shapes.block() : Shapes.empty();
	}

	@Override
	protected boolean propagatesSkylightDown(BlockState state) {
		return true;
	}

	private static void declareThisBlockNear(ServerPlayer player, BlockPos pos) {
		if (!player.hasAttached(RenmiAttachments.LOADING_STATE)) {
			player.setAttached(RenmiAttachments.LOADING_STATE, new LoadingState(player.level().getGameTime(), pos));
		}
	}

	public static void tickPlayer(ServerPlayer player) {
		long ticks = player.level().getGameTime();

		// if currently reading, don't update
		if (player.hasAttached(RenmiAttachments.READING_STATE) || ticks % 2 != 0) {
			return;
		}

		// Get loading state, if any
		if (player.getAttached(RenmiAttachments.LOADING_STATE) instanceof LoadingState state) {
			// Cancel if player crouches
			if (player.isCrouching()) {
				player.setAttached(RenmiAttachments.LOADING_STATE, state.cancel());
				return;
			}

			// If there is no block entity or player leaves the radius, remove attachment
			if (player.level().getBlockEntity(state.target()) instanceof StoryLocusBlockEntity locus
				&& player.distanceToSqr(state.target().getCenter()) <= locus.diameter * locus.diameter
			) {
				// Activate act if loaded and not cancelled
				if (!state.cancelled() && state.isLoaded(ticks)) {
					player.setAttached(RenmiAttachments.LOADING_STATE, state.cancel());

					ServerLevel level = (ServerLevel) locus.getLevel();
					ReadingManager manager = ReadingManager.getManager(level.getServer());
					RenmiLibrary library = RenmiLibrary.get(level.getServer());
					Series series = library.getSeries(locus.series);
					if (series == null) {
						return;
					}
					Act act = series.getAct(locus.act);
					if (act == null) {
						return;
					}
					try {
						manager.startReading(player, act, series, false);
						ServerPlayNetworking.send(player, new S2CDisplayStoryScreenPacket());
					} catch (RenmiExceptions.ReadingConditionsUnmet unmet) {
						Renmi.LOGGER.debug("locus attempted to start reading with unmet conditions");
					}
				}
			} else {
				player.removeAttached(RenmiAttachments.LOADING_STATE);
			}
		}
	}
}
