package symbolics.division.renmi.client.gui;

import dev.chailotl.bento_gui.client.elements.Image;
import net.minecraft.resources.Identifier;
import org.jspecify.annotations.Nullable;
import symbolics.division.renmi.client.gui.stage.ActorDirection;

class Portrait {
	private boolean active = false;
	private Identifier actorId = null;
	private Image image = Image.builder().build();

	public Portrait() {
		image.setVisible(false);
	}

	public void show(ActorDirection actorDir) {
		active = true;
		actorId = actorDir.id();
		image.setImage(actorDir.getTexture());
		image.setVisible(true);
	}

	public void hide() {
		active = false;
		actorId = null;
		image.setVisible(false);
	}

	public boolean isActive() {
		return active;
	}

	@Nullable
	public Identifier getActorId() {
		return actorId;
	}

	public Image getImage() {
		return image;
	}
}
