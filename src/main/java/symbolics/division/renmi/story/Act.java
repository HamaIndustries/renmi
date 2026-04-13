package symbolics.division.renmi.story;

import net.minecraft.resources.Identifier;

public class Act {
    protected final Identifier id;
    protected String source;
    protected String compiledJson;

    public Act(Identifier id, String source) {
        this.id = id;
        this.source = source;
    }

    public ActReading createReading() {
        return new ActReading(this);
    }

    public String source() {
        return this.source;
    }

    public String compiledJson() {
        return compiledJson;
    }
}
