package symbolics.division.renmi;

import net.fabricmc.api.ModInitializer;
import net.minecraft.core.Registry;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.core.registries.Registries;
import net.minecraft.resources.Identifier;
import net.minecraft.resources.ResourceKey;
import net.minecraft.world.item.BlockItem;
import net.minecraft.world.item.Item;
import net.minecraft.world.level.block.Block;
import net.minecraft.world.level.block.state.BlockBehaviour;
import net.minecraft.world.level.material.MapColor;
import net.minecraft.world.level.material.PushReaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.function.Function;

public class Renmi implements ModInitializer {
    public static final String MOD_ID = "renmi";
    public static final Logger LOGGER = LoggerFactory.getLogger(MOD_ID);


    public static final Block STORY_NODE = register(
            "story_node",
            Block::new,
            BlockBehaviour.Properties.of()
                    .strength(-1f, 3600000.8f)
                    .mapColor(MapColor.NONE)
                    .noLootTable()
                    .noOcclusion()
                    .noTerrainParticles()
                    .pushReaction(PushReaction.BLOCK),
            true
    );

    public static Identifier id(String id) {
        return Identifier.fromNamespaceAndPath(MOD_ID, id);
    }

    @Override
    public void onInitialize() {
        LOGGER.info("Hello Sakura High Secondary Academy!");
//        RenmiAttachments.init();
    }

    public static <T extends Block> T register(
            String name,
            Function<BlockBehaviour.Properties, Block> blockFactory,
            BlockBehaviour.Properties settings,
            boolean shouldRegisterItem
    ) {
        var blockKey = keyOfBlock(name);
        Block block = blockFactory.apply(settings.setId(blockKey));

        if (shouldRegisterItem) {
            var itemKey = keyOfItem(name);
            BlockItem blockItem = new BlockItem(block, new Item.Properties().setId(itemKey).useBlockDescriptionPrefix());
            Registry.register(BuiltInRegistries.ITEM, itemKey, blockItem);
        }

        return (T) Registry.register(BuiltInRegistries.BLOCK, blockKey, block);
    }

    private static ResourceKey<Block> keyOfBlock(String name) {
        return ResourceKey.create(Registries.BLOCK, id(name));
    }

    private static ResourceKey<Item> keyOfItem(String name) {
        return ResourceKey.create(Registries.ITEM, id(name));
    }
}