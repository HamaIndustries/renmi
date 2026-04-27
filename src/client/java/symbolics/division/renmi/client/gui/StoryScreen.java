package symbolics.division.renmi.client.gui;

import com.mojang.blaze3d.platform.Window;
import dev.chailotl.bento_gui.client.FlowAxis;
import dev.chailotl.bento_gui.client.elements.Button;
import dev.chailotl.bento_gui.client.elements.Label;
import dev.chailotl.bento_gui.client.elements.Panel;
import dev.chailotl.bento_gui.client.elements.Paragraph;
import dev.chailotl.bento_gui.client.util.DrawUtils;
import dev.chailotl.bento_gui.client.util.RenderOperations;
import net.fabricmc.fabric.api.client.networking.v1.ClientPlayNetworking;
import net.minecraft.client.Minecraft;
import net.minecraft.client.gui.components.WidgetSprites;
import net.minecraft.client.gui.screens.Screen;
import net.minecraft.client.input.KeyEvent;
import net.minecraft.client.input.MouseButtonEvent;
import net.minecraft.client.player.LocalPlayer;
import net.minecraft.client.renderer.RenderPipelines;
import net.minecraft.client.resources.sounds.SimpleSoundInstance;
import net.minecraft.network.chat.Component;
import net.minecraft.network.chat.SubStringSource;
import net.minecraft.resources.Identifier;
import net.minecraft.sounds.SoundEvents;
import org.lwjgl.glfw.GLFW;
import symbolics.division.renmi.Renmi;
import symbolics.division.renmi.RenmiAttachments;
import symbolics.division.renmi.client.gui.stage.ActorDirection;
import symbolics.division.renmi.client.gui.stage.StageDirection;
import symbolics.division.renmi.client.gui.stage.TextDirection;
import symbolics.division.renmi.net.C2SPlayerInputPacket;
import symbolics.division.renmi.story.Actor;
import symbolics.division.renmi.story.ActorManager;
import symbolics.division.renmi.story.ReadingState;

import java.util.ArrayList;
import java.util.List;

public class StoryScreen extends Screen {
	public static final Identifier NEXT_ARROW = Renmi.id("next_arrow");
	public static final Identifier NAME_PLATE = Renmi.id("name_plate");
	public static final WidgetSprites BUTTONS = new WidgetSprites(
		Renmi.id("choice_button"),
		Renmi.id("choice_button_highlighted")
	);

	private static Runnable updateCallback; // the hama special

	private Panel choices;
	private Label namePlate;
	private Paragraph textBoxText;
	private Button.Builder<?, ?> choiceButton;

	// allow portrait slots 1-6, but also allow absolute positioning.
	// FIXME: no absolute positioning yet
	private Portrait[] slots = new Portrait[6];
	private ArrayList<Integer> lastUsedSlots = new ArrayList<>();
	private final int[] slotOrder = {2, 3, 1, 4, 0, 5};
	private ArrayList<Portrait> allPortraits = new ArrayList<>();

	private DisplayState state;
	private boolean isFinishedScrolling = false;

	public StoryScreen() {
		super(Component.empty());

		choices = Panel.builder()
			.dimensions(true, true)
			.alignCenter()
			.verticalAlignment(0.75f)
			.spacing(10)
			.build();
		namePlate = Label.builder()
			.height(16)
			.renderOperations(
				(self, render) -> render.context().blitSprite(
					RenderPipelines.GUI_TEXTURED, NAME_PLATE,
					self.getX(), self.getY(), self.getWidth(), self.getHeight()
				),
				RenderOperations.TEXT_RENDER
			)
			.build();
		textBoxText = Paragraph.builder()
			.dimensions(true, 42)
			.padding(0, 0, 2, 0)
			.build();
		choiceButton = Button.builder()
			.renderOperations(
				(self, render) -> render.context().blitSprite(
					RenderPipelines.GUI_TEXTURED, BUTTONS.get(self.isEnabled(), self.isSelected()),
					self.getX(), self.getY(), self.getWidth(), self.getHeight()
				),
				RenderOperations.TEXT_RENDER
			);

		for (int i = 0; i < slots.length; ++i) {
			slots[i] = new Portrait();
		}

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
			.alignMiddle()
			.flowAxis(FlowAxis.HORIZONTAL)
			.renderOperations(
				(self, render) -> render.context().blitSprite(
					RenderPipelines.GUI_TEXTURED, Renmi.id("text_box"),
					self.getX(), self.getY(), self.getWidth(), self.getHeight()
				),
				RenderOperations.CHILD_RENDER,
				(self, render) -> {
					if (!state.isScrolling()) {
						render.context().blitSprite(
							RenderPipelines.GUI_TEXTURED, NEXT_ARROW,
							self.getRight() - 16, self.getBottom() - 16, 8, 8
						);
					}
				}
			)
			.build();

		root.addChild(actTitle);
		root.addChild(choices);
		root.addChild(textBox);
		textBox.addChild(textBoxText);

		root.reflowNow();

		namePlate.setPosition(textBox.getX() + 20, textBox.getY() - 8);

		for (Portrait slot : slots) {
			addRenderableOnly(slot.getImage());
		}
		addRenderableWidget(root);
		addRenderableOnly(namePlate);
	}

	private void setNameplate(Component name) {
		namePlate.setText(name);
		namePlate.setWidth(DrawUtils.textRenderer.width(name) + 16);
	}

	private void setPortrait(ActorDirection dir) {
		if (ActorManager.get(dir.id()) instanceof Actor actor) {
			Window window = minecraft.getWindow();

			// Hide existing actor
			for (int i = 0; i < slots.length; ++i) {
				if (dir.id().equals(slots[i].getActorId())) {
					slots[i].hide();
					lastUsedSlots.remove((Integer) i);
					break;
				}
			}

			// Pick a slot
			int slot = dir.slotPos();
			if (slot == -1) {
				slot = getNextFreeSlot();
			}
			lastUsedSlots.remove((Integer) slot);
			lastUsedSlots.add(slot);

			// Set up nameplate
			setNameplate(Component.translatable("actor." + dir.id().getNamespace() + "." + dir.id().getPath()));

			// Set up portrait
			Portrait portrait = slots[slot];
			portrait.show(dir);

			int guiScale = window.getGuiScale();
			float heightRatio = actor.heightCm() / 222f;
			float scale = (float) 125 * guiScale / actor.heightPx() * heightRatio;

			portrait.getImage().setWidth((int) (portrait.getImage().getTextureWidth() * scale));

			float x = window.getGuiScaledWidth() / 2f
				+ 30f * guiScale * (slot - 3)
				- actor.origin().x * scale;
			float y = window.getGuiScaledHeight()
				+ 25f * guiScale * heightRatio
				- actor.origin().y * scale;

			portrait.getImage().setPosition((int) x, (int) y);
		}
	}

	private int getNextFreeSlot() {
		for (int i : slotOrder) {
			if (!slots[i].isActive()) {
				return i;
			}
		}

		return lastUsedSlots.getFirst();
	}

	@Override
	public void tick() {
		if (state != null) {
			state.tick();

			if (!state.isScrolling()) {
				if (!isFinishedScrolling) {
					showChoices();
				}
				isFinishedScrolling = true;
			} else {
				isFinishedScrolling = false;
			}
		}
	}

	@Override
	public boolean keyPressed(KeyEvent event) {
		return (event.key() == GLFW.GLFW_KEY_SPACE && proceed()) || super.keyPressed(event);
	}

	@Override
	public boolean mouseClicked(MouseButtonEvent event, boolean doubleClick) {
		return (event.button() == GLFW.GLFW_MOUSE_BUTTON_1 && proceed()) || super.mouseClicked(event, doubleClick);
	}

	private boolean proceed() {
		LocalPlayer player = Minecraft.getInstance().player;
		var state = player.getAttached(RenmiAttachments.READING_STATE);

		if (state != null && state != ReadingState.INACTIVE) {
			if (this.state.isScrolling()) {
				this.state.skipScrolling();
				playDownSound();
				clearFocus();
				return true;
			} else if (state.choices().isEmpty()) {
				if (state.end()) {
					onClose();
				} else {
					ClientPlayNetworking.send(new C2SPlayerInputPacket(0));
				}
				playDownSound();
				clearFocus();
				return true;
			}
		}

		return false;
	}

	public void playDownSound() {
		Minecraft.getInstance().getSoundManager().play(SimpleSoundInstance.forUI(SoundEvents.UI_BUTTON_CLICK, 1f));
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
		}
	}

	private void showChoices() {
		LocalPlayer player = Minecraft.getInstance().player;
		var state = player.getAttached(RenmiAttachments.READING_STATE);

		if (!state.choices().isEmpty()) {
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

	private void makeChoice(int index) {
		ClientPlayNetworking.send(new C2SPlayerInputPacket(index));
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
					setPortrait(actor);

					for (Portrait p : slots) {
						if (p == null) { continue; }
						allPortraits.add(p);
					}
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

		public boolean isScrolling() {
			return textProgress < textLength;
		}

		public void skipScrolling() {
			textProgress = textLength;
		}
	}
}
