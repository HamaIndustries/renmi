package symbolics.division.renmi.client.gui.stage;

import net.minecraft.resources.Identifier;
import org.jetbrains.annotations.Nullable;

public record ActorDirection(
	Identifier id, String expression, int posX, int posY, int slotPos, Facing facing
) implements StageDirection {
	public Identifier getTexture() {
		return Identifier.fromNamespaceAndPath(
			id.getNamespace(),
			"textures/portrait/" + id.getPath() + "/" + expression + ".png"
		);
	}

	public enum Facing {
		RIGHT, LEFT, ANY
	}

	public static Facing getFacing(@Nullable String input) {
		return "r".equals(input) ? Facing.RIGHT : "l".equals(input) ? Facing.LEFT : Facing.ANY;
	}
}
