package symbolics.division.renmi.client.gui.stage;

import net.minecraft.resources.Identifier;

public record ActorDirection(Identifier id, String expression, int pos) implements StageDirection {
}
