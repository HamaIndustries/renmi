package symbolics.division.renmi;

import net.fabricmc.fabric.api.object.builder.v1.block.entity.FabricBlockEntityTypeBuilder;
import net.minecraft.core.Registry;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.core.registries.Registries;
import net.minecraft.resources.ResourceKey;
import net.minecraft.world.item.BlockItem;
import net.minecraft.world.item.Item;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.block.entity.BlockEntity;
import net.minecraft.world.level.block.entity.BlockEntityType;
import net.minecraft.world.level.block.state.BlockBehaviour;
import net.minecraft.world.level.material.MapColor;
import net.minecraft.world.level.material.PushReaction;
import symbolics.division.renmi.block.StoryLocusBlock;
import symbolics.division.renmi.block.entity.StoryLocusBlockEntity;

import java.util.function.Function;

public class RenmiBlocks {
	public static void init() { }

	public static final StoryLocusBlock STORY_LOCUS = register(
		"story_locus",
		StoryLocusBlock::new,
		BlockBehaviour.Properties.of()
			.strength(-1f, 3600000.8f)
			.mapColor(MapColor.NONE)
			.noLootTable()
			.noOcclusion()
			.noTerrainParticles()
			.pushReaction(PushReaction.BLOCK),
		true
	);

	public static final BlockEntityType<StoryLocusBlockEntity> STORY_LOCUS_ENTITY = register(
		"story_locus",
		StoryLocusBlockEntity::new,
		STORY_LOCUS
	);

	private static <T extends Block> T register(
		String name,
		Function<BlockBehaviour.Properties, Block> blockFactory,
		BlockBehaviour.Properties settings,
		boolean shouldRegisterItem
	) {
		var blockKey = keyOfBlock(name);
		Block block = blockFactory.apply(settings.setId(blockKey));

		if (shouldRegisterItem) {
			var itemKey = keyOfItem(name);
			BlockItem blockItem = new BlockItem(
				block,
				new Item.Properties().setId(itemKey).useBlockDescriptionPrefix()
			);
			Registry.register(BuiltInRegistries.ITEM, itemKey, blockItem);
		}

		return (T) Registry.register(BuiltInRegistries.BLOCK, blockKey, block);
	}

	private static <T extends BlockEntity> BlockEntityType<T> register(
		String name,
		FabricBlockEntityTypeBuilder.Factory<? extends T> entityFactory,
		Block... blocks
	) {
		return Registry.register(
			BuiltInRegistries.BLOCK_ENTITY_TYPE,
			Renmi.id(name),
			FabricBlockEntityTypeBuilder.<T>create(entityFactory, blocks).build()
		);
	}

	private static ResourceKey<Block> keyOfBlock(String name) {
		return ResourceKey.create(Registries.BLOCK, Renmi.id(name));
	}

	private static ResourceKey<Item> keyOfItem(String name) {
		return ResourceKey.create(Registries.ITEM, Renmi.id(name));
	}
}
