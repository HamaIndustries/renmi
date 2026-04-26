package symbolics.division.renmi.client;

import net.minecraft.client.Minecraft;
import symbolics.division.renmi.RenmiProxy;
import symbolics.division.renmi.client.gui.StoryScreen;

public class RenmiClientProxy extends RenmiProxy {
	@Override
	public void openStoryScreen() {
		Minecraft.getInstance().setScreen(new StoryScreen());
	}
}
