package symbolics.division.renmi.block.entity;

import net.minecraft.core.BlockPos;
import net.minecraft.core.HolderLookup;
import net.minecraft.nbt.CompoundTag;
import net.minecraft.network.protocol.Packet;
import net.minecraft.network.protocol.game.ClientGamePacketListener;
import net.minecraft.network.protocol.game.ClientboundBlockEntityDataPacket;
import net.minecraft.resources.Identifier;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.world.level.block.entity.BlockEntity;
import net.minecraft.world.level.block.state.BlockState;
import net.minecraft.world.level.storage.ValueInput;
import net.minecraft.world.level.storage.ValueOutput;
import org.jetbrains.annotations.Nullable;
import symbolics.division.renmi.Renmi;
import symbolics.division.renmi.RenmiBlocks;

public class StoryLocusBlockEntity extends BlockEntity {
	public Identifier act = Renmi.id("null");
	public Identifier series = Renmi.id("null");
	public float diameter = 3;

	public StoryLocusBlockEntity(BlockPos pos, BlockState state) {
		super(RenmiBlocks.STORY_LOCUS_ENTITY, pos, state);
	}

	@Override
	protected void saveAdditional(ValueOutput output) {
		super.saveAdditional(output);

		output.putString("act", act.toString());
		output.putString("series", series.toString());
		output.putFloat("diameter", diameter);
	}

	@Override
	protected void loadAdditional(ValueInput input) {
		super.loadAdditional(input);

		String actStr = input.getStringOr("act", "renmi:null");
		if (Identifier.tryParse(actStr) instanceof Identifier id) {
			act = id;
		}
		String seriesStr = input.getStringOr("series", "renmi:null");
		if (Identifier.tryParse(seriesStr) instanceof Identifier id) {
			series = id;
		}
		diameter = input.getFloatOr("diameter", 3);
	}

	@Override
	public void setChanged() {
		super.setChanged();
		if (level instanceof ServerLevel sw) {
			sw.getChunkSource().blockChanged(worldPosition);
		}
	}

	@Override
	public CompoundTag getUpdateTag(HolderLookup.Provider registryLookup) {
		return saveWithoutMetadata(registryLookup);
	}

	@Nullable
	@Override
	public Packet<ClientGamePacketListener> getUpdatePacket() {
		return ClientboundBlockEntityDataPacket.create(this);
	}
}
