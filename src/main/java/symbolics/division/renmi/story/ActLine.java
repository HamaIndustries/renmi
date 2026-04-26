package symbolics.division.renmi.story;

import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.network.codec.ByteBufCodecs;
import net.minecraft.network.codec.StreamCodec;

/**
 * A line of text in an {@link Act}.
 *
 * @param text
 */
public record ActLine(String text, boolean end) {
	// lines have text and stage directions.
	public static StreamCodec<FriendlyByteBuf, ActLine> STREAM_CODEC = StreamCodec.composite(
		ByteBufCodecs.STRING_UTF8, ActLine::text,
		ByteBufCodecs.BOOL, ActLine::end,
		ActLine::new
	);

	public static ActLine INACTIVE = new ActLine(null, true);

	public static ActLine of(String line, boolean end) {
		return new ActLine(line, end);
	}
}
