package symbolics.division.renmi.client.gui.stage;

import net.minecraft.resources.Identifier;

public record ActorDirection(Identifier id, String expression, int posX, int posY, int slotPos,
							 boolean faceRight) implements StageDirection {
}
