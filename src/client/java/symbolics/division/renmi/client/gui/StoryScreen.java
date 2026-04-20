package symbolics.division.renmi.client.gui;

import com.mojang.blaze3d.platform.Window;
import dev.chailotl.bento_gui.client.elements.*;
import net.fabricmc.fabric.api.client.networking.v1.ClientPlayNetworking;
import net.minecraft.client.Minecraft;
import net.minecraft.client.gui.screens.Screen;
import net.minecraft.client.player.LocalPlayer;
import net.minecraft.network.chat.Component;
import net.minecraft.resources.Identifier;
import symbolics.division.renmi.Renmi;
import symbolics.division.renmi.RenmiAttachments;
import symbolics.division.renmi.net.C2SPlayerInputPacket;
import symbolics.division.renmi.story.Actor;
import symbolics.division.renmi.story.ActorManager;
import symbolics.division.renmi.story.ReadingState;

public class StoryScreen extends Screen {
	private static Runnable updateCallback; // the hama special

	private Image portraitLeft = Image.builder().build();
	private Image portraitRight = Image.builder().build();

	private Paragraph currentText = Paragraph.builder()
		.dimensions(400, 100)
		.alignBottom()
		.build();
	private Button proceedButton = Button.builder()
		.dimensions(40, 30)
		.text(Component.translatable("gui.renmi.story.proceed"))
		.onPress(b -> proceed())
		.build();
	private Panel choicesBox = Panel.builder().dimensions(300, 200).build();

	public StoryScreen() {
		super(Component.empty());
		updateCallback = this::update;
		update();
	}

	@Override
	public void init() {
		if (minecraft == null) {
			return;
		}

		Window window = minecraft.getWindow();
		int width = window.getGuiScaledWidth();
		int height = window.getGuiScaledHeight();

		Panel root = Panel.builder()
			.dimensions(width, height)
			.margins(50, 50, 50, 50)
			.build();

		Panel top = Panel.builder()
			.dimensions(true, 400)
			.alignCenter()
			.alignMiddle()
			.build();
		top.addChild(choicesBox);

		Panel bottom = Panel.builder()
			.dimensions(100, 60)
			.alignMiddle()
			.build();
		bottom.addChild(Label.builder().text(Component.literal("hi hi hi hi")).build());
		bottom.addChild(proceedButton);
		bottom.addChild(currentText);
		bottom.addChild(Label.builder().text(Component.literal("byebyebye")).build());


		root.addChild(top);
		root.addChild(bottom);

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

	public void update() {
		LocalPlayer player = Minecraft.getInstance().player;
		var state = player.getAttached(RenmiAttachments.READING_STATE);
		if (state != null && state != ReadingState.INACTIVE) {
			// FIXME read through and display stage directions, not raw text
			currentText.setText(Component.literal(state.line().text()));
			var oldChoices = choicesBox.getChildren();
			for (var c : oldChoices) choicesBox.removeChild(c);
			if (state.choices().isEmpty()) {
				proceedButton.setVisible(true);
			} else {
				proceedButton.setVisible(false);
				for (var choice : state.choices()) {
					choicesBox.addChild(Button.builder().dimensions(true, 10)
						.text(Component.literal(choice.text())) // FIXME buttons might have component visiblity? placeholder api?
						.margins(0, 0, 0, 10)
						.onPress(b -> makeChoice(choice.index()))
						.build()
					);
				}
			}
		}
	}

	private void makeChoice(int index) {
		ClientPlayNetworking.send(new C2SPlayerInputPacket(index));
	}

	private void proceed() {
		ClientPlayNetworking.send(new C2SPlayerInputPacket(0));
	}

	public static void runUpdateCallback() {
		if (updateCallback != null) updateCallback.run();
	}
}
