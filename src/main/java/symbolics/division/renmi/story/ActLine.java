package symbolics.division.renmi.story;

import com.mojang.serialization.Codec;
import com.mojang.serialization.codecs.RecordCodecBuilder;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.network.codec.ByteBufCodecs;
import net.minecraft.network.codec.StreamCodec;

import java.util.List;

/**
 * A line of text in an {@link Act}.
 *
 * @param text
 */
public record ActLine(String text, boolean end, List<String> globalTags, List<String> tags) {
	// lines have text and stage directions.
	public static StreamCodec<FriendlyByteBuf, ActLine> STREAM_CODEC = StreamCodec.composite(
		ByteBufCodecs.STRING_UTF8, ActLine::text,
		ByteBufCodecs.BOOL, ActLine::end,
		ByteBufCodecs.STRING_UTF8.apply(ByteBufCodecs.list()), ActLine::globalTags,
		ByteBufCodecs.STRING_UTF8.apply(ByteBufCodecs.list()), ActLine::tags,
		ActLine::new
	);

	public static Codec<ActLine> CODEC = RecordCodecBuilder.create(instance -> instance.group(
		Codec.STRING.fieldOf("text").forGetter(ActLine::text),
		Codec.BOOL.fieldOf("end").forGetter(ActLine::end),
		Codec.STRING.listOf().fieldOf("globalTags").forGetter(ActLine::globalTags),
		Codec.STRING.listOf().fieldOf("tags").forGetter(ActLine::tags)
	).apply(instance, ActLine::new));

	public static ActLine INACTIVE = new ActLine("ERROR", true, List.of(), List.of());

	public static ActLine of(String line, boolean end, List<String> globalTags, List<String> tags) {
		return new ActLine(line, end, globalTags, tags);
	}
}
