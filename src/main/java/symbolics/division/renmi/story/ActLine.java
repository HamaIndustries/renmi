package symbolics.division.renmi.story;

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

	public static ActLine INACTIVE = new ActLine(null, true, List.of(), List.of());

	public static ActLine of(String line, boolean end, List<String> globalTags, List<String> tags) {
		return new ActLine(line, end, globalTags, tags);
	}
}
