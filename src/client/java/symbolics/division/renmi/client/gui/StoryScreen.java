package symbolics.division.renmi.client.gui;

import com.mojang.blaze3d.platform.Window;
import dev.chailotl.bento_gui.client.elements.*;
import net.fabricmc.fabric.api.client.networking.v1.ClientPlayNetworking;
import net.minecraft.client.Minecraft;
import net.minecraft.client.gui.screens.Screen;
import net.minecraft.client.player.LocalPlayer;
import net.minecraft.network.chat.Component;
import net.minecraft.network.chat.SubStringSource;
import net.minecraft.resources.Identifier;
import symbolics.division.renmi.Renmi;
import symbolics.division.renmi.RenmiAttachments;
import symbolics.division.renmi.client.gui.stage.ActorDirection;
import symbolics.division.renmi.client.gui.stage.StageDirection;
import symbolics.division.renmi.client.gui.stage.TextDirection;
import symbolics.division.renmi.net.C2SPlayerInputPacket;
import symbolics.division.renmi.story.Actor;
import symbolics.division.renmi.story.ActorManager;
import symbolics.division.renmi.story.ReadingState;

import java.util.List;

public class StoryScreen extends Screen {
	private static Runnable updateCallback; // the hama special
	private static Runnable tickCallback;

	private Image portraitLeft = Image.builder().build();
	private Image portraitRight = Image.builder().build();
	private int lastPortraitUsed = 0;
	private final Image[] portraits = {
		portraitLeft, portraitRight
	};
	private DisplayState state;

	private Paragraph currentText = Paragraph.builder()
		.dimensions(400, 100)
		.alignCenter()
		.alignMiddle()
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
		tickCallback = this::tick;
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


		//FIXME
//		root.addChild(top);
//		root.addChild(bottom);
		root.addChild(currentText);
		root.addChild(proceedButton);
		root.addChild(choicesBox);

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

	public void tick() {
		if (state != null) state.tick();
	}

	public void update() {
		LocalPlayer player = Minecraft.getInstance().player;
		var state = player.getAttached(RenmiAttachments.READING_STATE);
		if (state != null && state != ReadingState.INACTIVE) {
			// FIXME scrolling text display with sounds, tickable display.
			// currently only shows everything instantly.
			this.setDirections(StageDirection.parse(state.line()));

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

	public static void runTickCallback() {
		if (tickCallback != null) tickCallback.run();
	}

	public void setDirections(List<StageDirection> directions) {

		var displayedText = Component.empty().copy();
		for (var dir : directions) {
			switch (dir) {
				case ActorDirection actor -> {
					Image portrait = switch (actor.pos()) {
						case 0 -> portraitLeft;
						case 1 -> portraitRight;
						default -> portraits[(lastPortraitUsed++) % 2];
					};
					setPortrait(portrait, actor.id(), actor.expression());
				}
				case TextDirection text -> {
					displayedText.append(text.text());
				}
				default -> {
				}
			}
		}
		this.state = new DisplayState(displayedText, 1);

	}

	private class DisplayState {
		private final Component text;
		private SubStringSource splitText;
		private int textLength;
		private int textRate;
		private int textProgress = 0;
		private String tempStr;

		// textRate: characters per tick
		public DisplayState(Component text, int textRate) {
			this.text = text;
			this.tempStr = text.getString();
			this.splitText = SubStringSource.create(text);
			this.textLength = tempStr.length();
			this.textRate = textRate;

			StoryScreen.this.currentText.setText(Component.empty());
		}

		public void tick() {
			//FIXME need to scroll text with styling! this only show characters
			textProgress = Math.min(textProgress + textRate, textLength);
//			var substr = FormattedCharSequence.composite(splitText.substring(0, textProgress, false));
			StoryScreen.this.currentText.setText(Component.literal(tempStr.substring(0, textProgress)));
		}
	}
}
