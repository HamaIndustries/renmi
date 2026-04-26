package symbolics.division.renmi.client.gui;

import com.mojang.blaze3d.platform.Window;
import dev.chailotl.bento_gui.client.FlowAxis;
import dev.chailotl.bento_gui.client.elements.*;
import dev.chailotl.bento_gui.client.util.DrawUtils;
import dev.chailotl.bento_gui.client.util.RenderOperations;
import net.fabricmc.fabric.api.client.networking.v1.ClientPlayNetworking;
import net.minecraft.client.Minecraft;
import net.minecraft.client.gui.components.WidgetSprites;
import net.minecraft.client.gui.screens.Screen;
import net.minecraft.client.player.LocalPlayer;
import net.minecraft.client.renderer.RenderPipelines;
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

	private Image portraitLeft = Image.builder().build();
	private Image portraitRight = Image.builder().build();
	private int lastPortraitUsed = 0;
	private final Image[] portraits = {
		portraitLeft, portraitRight
	};
	private DisplayState state;

	private Panel choices = Panel.builder()
		.dimensions(true, true)
		.alignCenter()
		.verticalAlignment(0.75f)
		.build();
	private Paragraph textBoxText = Paragraph.builder()
		.dimensions(true, true)
		.alignCenter()
		.alignMiddle()
		.build();
	private Button proceedButton = Button.builder()
		.dimensions(20, 20)
		.text(Component.literal(">"))
		.onPress(_ -> proceed())
		.build();

	private Button.Builder<?, ?> choiceButton = Button.builder()
		.renderOperations(
			(self, render) -> render.context().blitSprite(
				RenderPipelines.GUI_TEXTURED, BUTTONS.get(self.isEnabled(), self.isSelected()),
				self.getX(), self.getY(), self.getWidth(), self.getHeight()
			),
			RenderOperations.TEXT_RENDER
		);

	public static final WidgetSprites BUTTONS = new WidgetSprites(
		Renmi.id("choice_button"),
		Renmi.id("choice_button_highlighted")
	);

	public StoryScreen() {
		super(Component.empty());
		updateCallback = this::update;
		update();
		portraitLeft.setVisible(false);
		portraitRight.setVisible(false);
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
			.padding(10)
			.alignCenter()
			.build();

		Label actTitle = Label.builder()
			.dimensions(true, 10)
			.alignLeft()
			.text(Component.literal("Event No.63 | Learn the demon king make-up |"))
			.build();
		Panel textBox = Panel.builder()
			.dimensions(true, 62)
			.maxWidth(Math.min((width - 34) / 16 * 16 + 14, 318))
			.padding(10)
			.alignBottom()
			.flowAxis(FlowAxis.HORIZONTAL)
			.renderOperations(
				(self, render) -> render.context().blitSprite(
					RenderPipelines.GUI_TEXTURED, Renmi.id("text_box"),
					self.getX(), self.getY(), self.getWidth(), self.getHeight()
				),
				RenderOperations.CHILD_RENDER
			)
			.build();

		root.addChild(actTitle);
		root.addChild(choices);
		root.addChild(textBox);

		textBox.addChild(textBoxText);
		textBox.addChild(proceedButton);

		addRenderableOnly(portraitLeft);
		addRenderableOnly(portraitRight);
		addRenderableWidget(root);
	}

	private void setPortrait(Image portrait, Identifier id, String expression) {
		if (ActorManager.get(id) instanceof Actor actor) {
			Window window = minecraft.getWindow();

			portrait.setVisible(true);
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

	private void hidePortrait(Image portrait) {
		portrait.setVisible(false);
	}

	private Identifier getPortrait(Identifier id, String expression) {
		return Identifier.fromNamespaceAndPath(
			id.getNamespace(),
			"textures/portrait/" + id.getPath() + "/" + expression + ".png"
		);
	}

	@Override
	public void tick() {
		if (state != null) {
			state.tick();
		}
	}

	public void update() {
		LocalPlayer player = Minecraft.getInstance().player;
		var state = player.getAttached(RenmiAttachments.READING_STATE);

		if (state != null && state != ReadingState.INACTIVE) {
			// FIXME scrolling text display with sounds, tickable display.
			// currently only shows everything instantly.
			this.setDirections(StageDirection.parse(state.line()));

			// Clear choices
			choices.getChildren().forEach(child -> choices.removeChild(child));

			if (state.choices().isEmpty()) {
				proceedButton.setVisible(true);

				if (state.end()) {
					proceedButton.setText(Component.translatable("gui.renmi.end"));
					proceedButton.setOnPress(_ -> this.onClose());
					proceedButton.setAutoWidth(true);
				}
			} else {
				// Show choices
				proceedButton.setVisible(false);

				// Find longest text width
				int width = 0;
				for (var choice : state.choices()) {
					int w = DrawUtils.textRenderer.width(choice.text());
					if (w > width) {
						width = w;
					}
				}

				width = (int) Math.ceil(width / 16.0) * 16 + 16;
				choiceButton.width(width);

				// Add choices
				for (var choice : state.choices()) {
					choices.addChild(choiceButton
						.text(Component.literal(choice.text())) // FIXME buttons might have component visiblity? placeholder api?
						.onPress(_ -> makeChoice(choice.index()))
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
		if (updateCallback != null) {
			updateCallback.run();
		}
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
				case TextDirection text -> displayedText.append(text.text());
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

			StoryScreen.this.textBoxText.setText(Component.empty());
		}

		public void tick() {
			//FIXME need to scroll text with styling! this only show characters
			textProgress = Math.min(textProgress + textRate, textLength);
//			var substr = FormattedCharSequence.composite(splitText.substring(0, textProgress, false));
			StoryScreen.this.textBoxText.setText(Component.literal(tempStr.substring(0, textProgress)));
		}
	}
}
