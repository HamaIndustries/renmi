package symbolics.division.renmi.client.gui;

import com.mojang.blaze3d.platform.Window;
import dev.chailotl.bento_gui.client.FlowAxis;
import dev.chailotl.bento_gui.client.elements.*;
import dev.chailotl.bento_gui.client.util.DrawUtils;
import dev.chailotl.bento_gui.client.util.RenderOperations;
import net.fabricmc.fabric.api.client.networking.v1.ClientPlayNetworking;
import net.minecraft.client.Minecraft;
import net.minecraft.client.gui.GuiGraphicsExtractor;
import net.minecraft.client.gui.components.Tooltip;
import net.minecraft.client.gui.components.WidgetSprites;
import net.minecraft.client.gui.screens.Screen;
import net.minecraft.client.input.KeyEvent;
import net.minecraft.client.input.MouseButtonEvent;
import net.minecraft.client.player.LocalPlayer;
import net.minecraft.client.renderer.RenderPipelines;
import net.minecraft.client.resources.sounds.SimpleSoundInstance;
import net.minecraft.network.chat.Component;
import net.minecraft.network.chat.MutableComponent;
import net.minecraft.network.chat.Style;
import net.minecraft.network.chat.SubStringSource;
import net.minecraft.resources.Identifier;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.util.FormattedCharSequence;
import net.minecraft.util.Util;
import org.lwjgl.glfw.GLFW;
import symbolics.division.renmi.Renmi;
import symbolics.division.renmi.RenmiAttachments;
import symbolics.division.renmi.client.gui.stage.*;
import symbolics.division.renmi.net.C2SPlayerInputPacket;
import symbolics.division.renmi.net.C2SPlayerReadingPacket;
import symbolics.division.renmi.net.C2SRequestStoryLogPacket;
import symbolics.division.renmi.story.ActChoice;
import symbolics.division.renmi.story.Actor;
import symbolics.division.renmi.story.ActorManager;
import symbolics.division.renmi.story.ReadingState;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public class StoryScreen extends Screen {
	public static final Identifier NEXT_ARROW = Renmi.id("next_arrow");
	public static final Identifier NAME_PLATE = Renmi.id("name_plate");
	public static final WidgetSprites CHOICE_BUTTON = new WidgetSprites(
			Renmi.id("choice_button"),
			Renmi.id("choice_button_highlighted")
	);
	public static final WidgetSprites LOG_BUTTON = new WidgetSprites(
			Renmi.id("log_button"),
			Renmi.id("log_button_highlighted")
	);

	private static Runnable updateCallback; // the hama special

	private boolean previousHideGui;

	private Panel choices;
	private Label namePlate;
	private Paragraph textBoxText;
	private Button.Builder<?, ?> choiceButton;

	private Button logButton;
	private Panel root;

	// allow portrait slots 1-6, but also allow absolute positioning.
	// FIXME: no absolute positioning yet
	private Portrait[] slots = new Portrait[6];
	private ArrayList<Integer> lastUsedSlots = new ArrayList<>();
	private final int[] slotOrder = {2, 3, 1, 4, 0, 5};
	private ArrayList<Portrait> allPortraits = new ArrayList<>();

	private DisplayState state;
	private long choicesAnimTimer;
	private boolean blur = true;

	public StoryScreen() {
		super(Component.empty());

		previousHideGui = minecraft.options.hideGui;
		minecraft.options.hideGui = true;

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
						(self, render) -> {
							var matrices = render.context().pose();
							matrices.pushMatrix();

							long timer = Util.getMillis() - choicesAnimTimer;

							if (timer < 100) {
								matrices.translate(self.getX() + self.getWidth() / 2f, self.getY() + self.getHeight() / 2f);
								if (timer < 50) {
									matrices.scale(1.2f, 0.8f);
								} else {
									matrices.scale(0.95f, 1.05f);
								}
								matrices.translate(-self.getX() - self.getWidth() / 2f, -self.getY() - self.getHeight() / 2f);
							}

							render.context().blitSprite(
									RenderPipelines.GUI_TEXTURED, CHOICE_BUTTON.get(self.isEnabled(), self.isSelected()),
									self.getX(), self.getY(), self.getWidth(), self.getHeight()
							);
							RenderOperations.TEXT_RENDER.render(self, render);

							matrices.popMatrix();
						}
				);

		for (int i = 0; i < slots.length; ++i) {
			slots[i] = new Portrait();
		}

		root = Panel.builder().build();
		logButton = Button.builder().build();

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

		root = Panel.builder()
				.dimensions(width, height)
				.padding(10)
				.alignCenter()
				.build();

		Label actTitle = Label.builder()
				.dimensions(true, 10)
				.alignLeft()
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
							// Both tests needed to ensure it doesn't flicker on frames between ticks
							if (state != null && !state.isScrolling() && choices.getChildren().isEmpty()) {
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

		logButton = Button.builder()
				.text(Component.literal("Log"))
				.dimensions(22, 22)
				.position(width - 32, height - 32)
				.onPress(_ -> ClientPlayNetworking.send(new C2SRequestStoryLogPacket()))
				.renderOperations((self, render) -> {
					render.context().blitSprite(
							RenderPipelines.GUI_TEXTURED, LOG_BUTTON.get(self.isEnabled(), self.isSelected()),
							self.getX(), self.getY(), self.getWidth(), self.getHeight()
					);
				})
				.tooltip(Tooltip.create(Component.translatable("tooltip.renmi.log")))
				.build();

		reflow();
	}

	private void reflow() {
		removeWidget(logButton);
		removeWidget(root);
		removeWidget(namePlate);
		for (Portrait slot : slots) {
			removeWidget(slot.getImage());
		}

		for (int i : lastUsedSlots) {
			if (i == -1) continue;
			addRenderableOnly(slots[i].getImage());
		}
		addRenderableWidget(logButton);
		addRenderableWidget(root);
		addRenderableOnly(namePlate);
	}

	private void hideNameplate() {
		namePlate.setVisible(false);
	}

	private void setNameplate(Component name) {
		namePlate.setText(name);
		namePlate.setWidth(DrawUtils.textRenderer.width(name) + 16);
		namePlate.setVisible(true);
	}

	private void hideActor(Identifier id) {
		for (Portrait slot : slots) {
			if (id.equals(slot.getActorId())) {
				slot.hide();
			}
		}
	}

	private void setPortrait(ActorDirection dir) {
		if (ActorManager.get(dir.id()) instanceof Actor actor) {
			Window window = minecraft.getWindow();

			int oldSlot = -1;
			// Hide existing actor
			for (int i = 0; i < slots.length; ++i) {
				if (dir.id().equals(slots[i].getActorId())) {
					slots[i].hide();
					lastUsedSlots.remove((Integer) i);
					oldSlot = i;
					break;
				}
			}

			// Pick a slot
			int slot = dir.slotPos();
			if (slot == -1) {
				slot = oldSlot == -1 ? getNextFreeSlot() : oldSlot;
			}
			lastUsedSlots.remove((Integer) slot);
			lastUsedSlots.add(slot);

			// Set up nameplate
			setNameplate(Component.translatable("actor." + dir.id().getNamespace() + "." + dir.id().getPath()));

			// Set up portrait
			Portrait portrait = slots[slot];
			boolean faceRight = switch (dir.facing()) {
				case RIGHT -> true;
				case LEFT -> false;
				case ANY -> false; //slot < slots.length / 2;
			};
			portrait.show(dir, faceRight);

			int width = window.getGuiScaledWidth();
			int height = window.getGuiScaledHeight();
			float heightRatio = actor.heightCm() / 222f;
			float scale = 1.116f * height / actor.heightPx() * heightRatio;

			portrait.getImage().setWidth((int) (portrait.getImage().getTextureWidth() * scale));

			float x = width / 2f
					+ width / 8f * (slot - 2.5f)
					- actor.origin().x * scale;
			float y = height
					+ height / 4.48f * heightRatio
					- actor.origin().y * scale;

			portrait.getImage().setPosition((int) x, (int) y);

			// lets us display newest actors on top
			reflow();
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
		}
	}

	@Override
	public boolean keyPressed(KeyEvent event) {
		return (event.key() == GLFW.GLFW_KEY_SPACE && proceed()) || super.keyPressed(event);
	}

	@Override
	public boolean mouseClicked(MouseButtonEvent event, boolean doubleClick) {
		super.mouseClicked(event, doubleClick);

		var focused = getFocused();
		while (focused instanceof Panel panel) {
			focused = panel.getFocused();
		}
		return focused instanceof Button || (event.button() == GLFW.GLFW_MOUSE_BUTTON_1 && proceed());
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
			} else if (!state.choices().isEmpty()) {
				if (choices.children().isEmpty()) {
					showChoices();
					return true;
				}
			} else {
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

	public void onClose() {
		super.onClose();
		minecraft.options.hideGui = previousHideGui;
		ClientPlayNetworking.send(new C2SPlayerReadingPacket(false));
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
			choices.setFocused(null);
			choices.getChildren().forEach(child -> choices.removeChild(child));
		}
	}

	private Button createChoiceButton(ActChoice choice) {
		return choiceButton
				.text(Component.literal(choice.text())) // FIXME buttons might have component visiblity? placeholder api?
				.onPress(_ -> makeChoice(choice.index()))
				.build();
	}

	private void showChoices() {
		LocalPlayer player = Minecraft.getInstance().player;
		var state = player.getAttached(RenmiAttachments.READING_STATE);
		choicesAnimTimer = Util.getMillis();

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
			boolean dualColumn = state.choices().size() > 4;
			var it = state.choices().iterator();

			while (it.hasNext()) {
				BentoElement element;
				var choice = it.next();

				if (dualColumn && it.hasNext()) {
					var panel = Panel.builder()
							.width(true)
							.alignCenter()
							.flowAxis(FlowAxis.HORIZONTAL)
							.build();

					panel.addChild(createChoiceButton(choice));
					panel.addChild(createChoiceButton(it.next()));

					element = panel;
				} else {
					element = createChoiceButton(choice);
				}

				choices.addChild(element);
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
		boolean hasActor = false;
		for (var dir : directions) {
			switch (dir) {
				case ActorDirection actor -> {
					setPortrait(actor);
					hasActor = true;
				}
				case SoundDirection soundDirection -> {
					soundDirection.playSound();
				}
				case TextDirection text -> displayedText.append(text.text());
				case HideDirection hideDirection -> hideActor(hideDirection.id());
				case BlurDirection blur -> this.blur = blur.blur();
			}
		}

		if (!hasActor) {
			hideNameplate();
		}
		this.state = new DisplayState(displayedText);
	}

	@Override
	protected void extractBlurredBackground(GuiGraphicsExtractor graphics) {
		if (blur) super.extractBlurredBackground(graphics);
	}

	private class DisplayState {
		private final Component text;
		private SubStringSource splitText;
		private int textLength;
		private int textProgress = 0;
		private String tempStr;

		// textRate: characters per tick
		public DisplayState(Component text) {
			this.text = text;
			this.tempStr = text.getString();
			this.splitText = SubStringSource.create(text);
			this.textLength = tempStr.length();

			StoryScreen.this.textBoxText.setText(Component.empty());
		}

		public void tick() {
			textProgress = Math.min(textProgress + Renmi.CONFIG.textSpeed, textLength);
//			var substr = FormattedCharSequence.composite(splitText.substring(0, textProgress, false));
			List<FormattedCharSequence> formattedCharSequenceList = splitText.substring(0, textProgress, false);

			MutableComponent result = Component.empty();
			for (FormattedCharSequence sequence : formattedCharSequenceList) {
				MutableComponent component = Component.empty();
				AtomicReference<Style> style = new AtomicReference<>(Style.EMPTY);

				sequence.accept((index, seqStyle, codePoint) -> {
					String character = new String(Character.toChars(codePoint));
					component.append(Component.literal(character));
					style.set(seqStyle);
					return true;
				});

				component.withStyle(style.get());
				result.append(component);
			}

			StoryScreen.this.textBoxText.setText(result);
//			StoryScreen.this.textBoxText.setText(Component.literal(tempStr.substring(0, textProgress)));
		}

		public boolean isScrolling() {
			return textProgress < textLength;
		}

		public void skipScrolling() {
			textProgress = textLength;
		}


	}

	@Override
	public boolean isPauseScreen() {
		return false;
	}
}
