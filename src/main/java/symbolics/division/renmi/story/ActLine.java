package symbolics.division.renmi.story;


import net.minecraft.network.FriendlyByteBuf;
import net.minecraft.network.codec.StreamCodec;

public record ActLine(String text) {
    // lines have text and stage directions.
    public static StreamCodec<FriendlyByteBuf, ActLine> STREAM_CODEC;

    public static ActLine INACTIVE = new ActLine(null);

    public static ActLine of(String line) {
        return new ActLine(line);
    }
}
