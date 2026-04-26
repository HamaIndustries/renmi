package symbolics.division.renmi.client.gui;

import dev.chailotl.bento_gui.client.elements.TextArea;
import net.minecraft.client.input.KeyEvent;
import org.lwjgl.glfw.GLFW;

public class TextAreaWithTabs extends TextArea {
	protected TextAreaWithTabs() { }

	/* ----- Builder ----- */

	/**
	 * @return a new Builder instance
	 */
	public static TextAreaWithTabs.Builder<?> builder() {
		return new TextAreaWithTabs.Builder<>();
	}

	public static class Builder<S extends TextAreaWithTabs.Builder<S>> extends TextArea.Builder<S> {
		Builder() {
			super();
		}

		@SuppressWarnings("unchecked")
		protected TextAreaWithTabs prebuild(TextAreaWithTabs textArea) {
			return (TextAreaWithTabs) super.prebuild(textArea);
		}

		/**
		 * @return the constructed text field
		 */
		public TextAreaWithTabs build() {
			return prebuild(new TextAreaWithTabs());
		}
	}

	/* ----- Interaction ----- */

	@Override
	public boolean keyPressed(final KeyEvent event) {
		if (focused && event.key() == GLFW.GLFW_KEY_TAB) {
			write("    ");
			return true;
		}

		return super.keyPressed(event);
	}
}
