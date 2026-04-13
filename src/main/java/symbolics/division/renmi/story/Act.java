package symbolics.division.renmi.story;

import com.bladecoder.ink.runtime.Story;
import com.mojang.serialization.Codec;
import com.mojang.serialization.codecs.RecordCodecBuilder;
import net.minecraft.resources.Identifier;
import net.minecraft.server.level.ServerPlayer;
import org.apache.commons.lang3.NotImplementedException;

public class Act {
    public static final Codec<Act> CODEC = RecordCodecBuilder.create(
            instance -> instance.group(
                    Identifier.CODEC.fieldOf("id").forGetter(p -> p.id),
                    Codec.STRING.fieldOf("source").forGetter(p -> p.source),
                    Codec.STRING.fieldOf("json").forGetter(p -> p.json)
            ).apply(instance, Act::new)
    );

    protected final Identifier id;
    protected String source;
    protected String json;

    public Act(Identifier id, String source, String json) {
        this.id = id;
        this.source = source;
    }

    public ActReading createReading(ServerPlayer player) {
        return new ActReading(this, player);
    }

    public String source() {
        return this.source;
    }

    public Story getStory() {
        try {
            return new Story(source);
        } catch (Exception e) {
            throw new NotImplementedException();
        }
    }
}
