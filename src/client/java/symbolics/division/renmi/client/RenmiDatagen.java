package symbolics.division.renmi.client;


import net.fabricmc.fabric.api.client.datagen.v1.provider.FabricModelProvider;
import net.fabricmc.fabric.api.datagen.v1.DataGeneratorEntrypoint;
import net.fabricmc.fabric.api.datagen.v1.FabricDataGenerator;
import net.fabricmc.fabric.api.datagen.v1.FabricPackOutput;
import net.minecraft.client.data.models.BlockModelGenerators;
import net.minecraft.client.data.models.ItemModelGenerators;
import net.minecraft.client.data.models.model.ModelTemplates;
import symbolics.division.renmi.RenmiBlocks;

public class RenmiDatagen implements DataGeneratorEntrypoint {
	@Override
	public void onInitializeDataGenerator(FabricDataGenerator fabricDataGenerator) {
		var pack = fabricDataGenerator.createPack();
		pack.addProvider(ModelGen::new);
	}

	public static class ModelGen extends FabricModelProvider {

		public ModelGen(FabricPackOutput output) {
			super(output);
		}

		@Override
		public void generateBlockStateModels(BlockModelGenerators blockModelGenerators) {
			blockModelGenerators.createAirLikeBlock(RenmiBlocks.STORY_LOCUS, RenmiBlocks.STORY_LOCUS.asItem());
		}

		@Override
		public void generateItemModels(ItemModelGenerators itemModelGenerators) {
			itemModelGenerators.generateFlatItem(RenmiBlocks.STORY_LOCUS.asItem(), ModelTemplates.FLAT_HANDHELD_ITEM);
		}
	}
}
