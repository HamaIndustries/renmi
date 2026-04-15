package symbolics.division.renmi.client.gui;

import com.mojang.blaze3d.platform.Window;
import dev.chailotl.bento_gui.client.elements.Image;
import dev.chailotl.bento_gui.client.elements.Panel;
import net.minecraft.client.gui.screens.Screen;
import net.minecraft.network.chat.Component;
import net.minecraft.resources.Identifier;
import symbolics.division.renmi.Renmi;
import symbolics.division.renmi.story.Actor;
import symbolics.division.renmi.story.ActorManager;

public class StoryScreen extends Screen {
	private Image portraitLeft = Image.builder().build();
	private Image portraitRight = Image.builder().build();

	public StoryScreen() {
		super(Component.empty());
	}

	@Override
	public void init() {
		if (minecraft == null) { return; }

		Window window = minecraft.getWindow();
		int width = window.getGuiScaledWidth();
		int height = window.getGuiScaledHeight();

		Panel root = Panel.builder()
			.dimensions(width, height)
			.alignCenter()
			.alignMiddle()
			.build();

		setPortrait(portraitRight, Renmi.id("ugg"), "neutral");
		setPortrait(portraitLeft, Renmi.id("plume"), "pout");

		addRenderableWidget(root);
		addRenderableWidget(portraitLeft);
		addRenderableWidget(portraitRight);
	}

	private void setPortrait(Image portrait, Identifier id, String expression) {
		if (ActorManager.get(id) instanceof Actor actor) {
			Window window = minecraft.getWindow();

			portrait.setImage(getPortrait(id, expression));

			int guiScale = window.getGuiScale();
			float heightRatio = actor.heightCm() / 222f;
			float scale = (float) 125 * guiScale / actor.heightPx() * heightRatio;

			portrait.setWidth((int) (portrait.getTextureWidth() * scale));

			float x = window.getGuiScaledWidth() / 2f
				+ 40f * guiScale * (portrait == portraitRight ? 1 : -1)
				- actor.origin().x * scale;
			float y = window.getGuiScaledHeight()
				+ 25f * guiScale * heightRatio
				- actor.origin().y * scale;

			portrait.setPosition((int) x, (int) y);
		}
	}

	private Identifier getPortrait(Identifier id, String expression) {
		return Identifier.fromNamespaceAndPath(
			id.getNamespace(),
			"textures/portrait/" + id.getPath() + "/" + expression + ".png"
		);
	}
}
