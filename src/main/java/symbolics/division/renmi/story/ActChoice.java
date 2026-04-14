package symbolics.division.renmi.story;

import com.bladecoder.ink.runtime.Choice;
import com.mojang.serialization.Codec;
import com.mojang.serialization.codecs.RecordCodecBuilder;
import io.netty.buffer.ByteBuf;
import net.minecraft.network.codec.ByteBufCodecs;
import net.minecraft.network.codec.StreamCodec;

/**
 * A dialogue choice the client can make.
 *
 * @param index
 * @param text
 */
public record ActChoice(int index, String text) {
	public static final Codec<ActChoice> CODEC = RecordCodecBuilder.create(instance -> instance.group(
		Codec.INT.fieldOf("index").forGetter(ActChoice::index),
		Codec.STRING.fieldOf("text").forGetter(ActChoice::text)
	).apply(instance, ActChoice::new));

	public static final StreamCodec<ByteBuf, ActChoice> STREAM_CODEC = StreamCodec.composite(
		ByteBufCodecs.INT, ActChoice::index,
		ByteBufCodecs.STRING_UTF8, ActChoice::text,
		ActChoice::new
	);

	public static ActChoice of(Choice choice) {
		return new ActChoice(choice.getIndex(), choice.getText());
	}
}
