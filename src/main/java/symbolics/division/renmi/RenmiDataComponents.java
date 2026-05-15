package symbolics.division.renmi;

import com.mojang.serialization.Codec;
import com.mojang.serialization.codecs.RecordCodecBuilder;
import net.fabricmc.fabric.api.networking.v1.ServerPlayNetworking;
import net.minecraft.core.Registry;
import net.minecraft.core.component.DataComponentType;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.network.chat.Component;
import net.minecraft.resources.Identifier;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.world.InteractionHand;
import net.minecraft.world.InteractionResult;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.item.Item;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.level.Level;
import symbolics.division.renmi.net.S2CDisplayStoryScreenPacket;
import symbolics.division.renmi.story.Act;
import symbolics.division.renmi.story.ReadingManager;
import symbolics.division.renmi.story.RenmiLibrary;
import symbolics.division.renmi.story.Series;
import symbolics.division.renmi.util.RenmiExceptions;

import java.util.Optional;

public class RenmiDataComponents {
	public static void init() {
	}

	public record StoryData(Identifier series, Identifier act, Optional<Boolean> force) {

	}

	private static final Codec<StoryData> STORY_CODEC = RecordCodecBuilder.create(pair -> pair.group(
		Identifier.CODEC.fieldOf("series").forGetter(StoryData::series),
		Identifier.CODEC.fieldOf("act").forGetter(StoryData::act),
		Codec.BOOL.optionalFieldOf("force").forGetter(StoryData::force)
	).apply(pair, StoryData::new));

	public static final DataComponentType<StoryData> STORY = Registry.register(
		BuiltInRegistries.DATA_COMPONENT_TYPE,
		Renmi.id("story"),
		DataComponentType.<StoryData>builder()
			.persistent(STORY_CODEC)
			.build()
	);

	public static InteractionResult injectItemUse(Item item, final Level level, final Player player, final InteractionHand hand) {
		ItemStack stack = player.getItemInHand(hand);

		var story = stack.get(STORY);
		if (story != null && player instanceof ServerPlayer p) {
			ReadingManager manager = ReadingManager.getManager(p.level().getServer());
			RenmiLibrary library = RenmiLibrary.get(p.level().getServer());
			Series series = library.getSeries(story.series);
			if (series == null) return null;
			Act act = series.getAct(story.act);
			if (act == null) return null;
			try {
				manager.startReading(p, act, series, story.force.orElseGet(() -> false));
				ServerPlayNetworking.send(p, new S2CDisplayStoryScreenPacket());
				return InteractionResult.SUCCESS;
			} catch (RenmiExceptions.ReadingConditionsUnmet unmet) {
				p.sendSystemMessage(Component.translatable("error.renmi.conditions_unmet"), true);
			}
		}
		return null;
	}
}
