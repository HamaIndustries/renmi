package symbolics.division.renmi.client.gui;

import com.mojang.blaze3d.platform.Window;
import dev.chailotl.bento_gui.client.elements.Button;
import dev.chailotl.bento_gui.client.elements.Panel;
import dev.chailotl.bento_gui.client.elements.Paragraph;
import net.minecraft.client.Minecraft;
import net.minecraft.client.gui.screens.Screen;
import net.minecraft.network.chat.Component;

public class StoryLogScreen extends Screen {
	private Paragraph text;

	public StoryLogScreen(String content) {
		super(Component.empty());

		text = Paragraph.builder()
			.dimensions(true, true)
			.text(Component.literal(content))
			.build();
	}

	@Override
	protected void init() {
		if (minecraft == null) return;

		Window window = minecraft.getWindow();
		int width = window.getGuiScaledWidth();
		int height = window.getGuiScaledHeight();

		Panel root = Panel.builder()
			.dimensions(width, height)
			.padding(10)
			.alignCenter()
			.build();

		Button returnButton = Button.builder()
			.dimensions(30, 30)
			.text(Component.literal("<-"))
			.onPress(_ -> Minecraft.getInstance().setScreen(new StoryScreen()))
			.build();

		root.addChild(text);
		root.addChild(returnButton);
		addRenderableWidget(root);
	}
}
