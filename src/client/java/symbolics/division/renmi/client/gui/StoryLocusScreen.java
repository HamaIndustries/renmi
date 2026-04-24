package symbolics.division.renmi.client.gui;

import com.google.common.primitives.Floats;
import com.mojang.blaze3d.platform.Window;
import dev.chailotl.bento_gui.client.FlowAxis;
import dev.chailotl.bento_gui.client.elements.*;
import net.fabricmc.fabric.api.client.networking.v1.ClientPlayNetworking;
import net.minecraft.client.gui.screens.Screen;
import net.minecraft.network.chat.Component;
import net.minecraft.resources.Identifier;
import symbolics.division.renmi.block.entity.StoryLocusBlockEntity;
import symbolics.division.renmi.net.C2SEditStoryLocusPacket;

public class StoryLocusScreen extends Screen {
	private final StoryLocusBlockEntity be;

	private TextField<Identifier> actField;
	private TextField<Identifier> seriesField;
	private TextField<Float> diameterField;
	private TextArea scriptField;

	public StoryLocusScreen(StoryLocusBlockEntity be) {
		super(Component.empty());
		this.be = be;
	}

	@Override
	public void init() {
		if (minecraft == null) { return; }

		Window window = minecraft.getWindow();
		Panel root = Panel.builder()
			.dimensions(window.getGuiScaledWidth(), window.getGuiScaledHeight())
			.alignCenter()
			.alignMiddle()
			.flowAxis(FlowAxis.HORIZONTAL)
			.padding(20)
			.build();
		Panel editorPanel = Panel.builder()
			.dimensions((int) (root.getWidth() * 0.45), true)
			.build();
		Panel sidePanel = Panel.builder()
			.dimensions(true, true)
			.alignLeft()
			.build();

		// TODO: populate script with current act text
		scriptField = TextArea.builder()
			.dimensions(true, true)
			.build();
		seriesField = TextField.ofIdentifier()
			.text(String.valueOf(be.act))
			.build();
		actField = TextField.ofIdentifier()
			.text(String.valueOf(be.act))
			.build();
		diameterField = TextField.ofFloat()
			.validationPredicate(s -> Floats.tryParse(s) instanceof Float n && n >= 1)
			.text(String.valueOf(Math.max(1f, be.diameter)))
			.build();

		Button doneButton = Button.builder()
			.text(Component.translatable("gui.done"))
			.onPress(_ -> onClose())
			.build();

		editorPanel.addChild(scriptField);
		root.addChild(editorPanel);

		sidePanel.addChild(addLabel(seriesField, "gui.renmi.series_id"));
		sidePanel.addChild(addLabel(actField, "gui.renmi.act_id"));
		sidePanel.addChild(addLabel(diameterField, "gui.renmi.diameter"));
		sidePanel.addChild(doneButton);
		root.addChild(sidePanel);

		addRenderableWidget(root);
	}

	private Panel addLabel(BentoElement element, String translationKey) {
		Panel panel = Panel.builder()
			.width(true)
			.alignCenter()
			.flowAxis(FlowAxis.HORIZONTAL)
			.build();
		Label label = Label.builder()
			.width(true)
			.text(Component.translatable(translationKey))
			.alignLeft()
			.build();
		panel.addChild(label);
		panel.addChild(element);
		return panel;
	}

	@Override
	public void onClose() {
		if (actField.isValidText() && !actField.getText().isEmpty()) {
			be.series = seriesField.getValue();
		}
		if (actField.isValidText() && !actField.getText().isEmpty()) {
			be.act = actField.getValue();
		}
		if (diameterField.isValidText()) {
			be.diameter = diameterField.getValue();
		}
		ClientPlayNetworking.send(new C2SEditStoryLocusPacket(
			be.getBlockPos(),
			be.series,
			be.act,
			be.diameter,
			scriptField.getText()
		));
		super.onClose();
	}
}
