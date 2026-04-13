package symbolics.division.renmi.story;

import com.bladecoder.ink.runtime.Choice;
import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.network.codec.StreamCodec;

public record ActChoice(int index, String text) {
    public static final StreamCodec<FriendlyByteBuf, ActChoice> STREAM_CODEC;

    public static ActChoice of(Choice choice) {
        return new ActChoice(choice.getIndex(), choice.getText());
    }
}
