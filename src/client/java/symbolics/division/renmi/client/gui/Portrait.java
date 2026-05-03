package symbolics.division.renmi.client.gui;

import dev.chailotl.bento_gui.client.RenderOperation;
import dev.chailotl.bento_gui.client.elements.Image;
import dev.chailotl.bento_gui.client.util.RenderOperations;
import net.minecraft.client.renderer.RenderPipelines;
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

	public void show(ActorDirection actorDir, boolean faceRight) {
		active = true;
		actorId = actorDir.id();
		image.setImage(actorDir.getTexture());
		// FIXME double renders when flipped??
		if (faceRight) {
			image.setRenderOperations(IMAGE_RENDER_FLIPPED);
		} else {
			image.setRenderOperations(RenderOperations.IMAGE_RENDER);
		}
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

	private static final RenderOperation IMAGE_RENDER_FLIPPED = (self, render) -> {
		if (self instanceof Image image) {
			int width = image.getWidth();
			int height = image.getHeight();
			render.context().blit(
				image.getImage(),
				image.getX(),
				image.getY(),
				image.getX() + image.getWidth(),
				image.getY() + image.getHeight(),
				1, 0, 0, 1
			);
			render.context().blit(RenderPipelines.GUI_TEXTURED, image.getImage(), image.getX() + width, image.getY() + width, 0, 0, -width, -height, width, height);
		}
	};
}
