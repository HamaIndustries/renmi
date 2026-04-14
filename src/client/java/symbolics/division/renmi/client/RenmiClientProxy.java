package symbolics.division.renmi.client;

import net.minecraft.client.Minecraft;
import symbolics.division.renmi.RenmiProxy;
import symbolics.division.renmi.block.entity.StoryNodeBlockEntity;
import symbolics.division.renmi.client.gui.StoryNodeScreen;

public class RenmiClientProxy extends RenmiProxy {
	@Override
	public void openStoryNodeScreen(StoryNodeBlockEntity be) {
		Minecraft.getInstance().setScreen(new StoryNodeScreen(be));
	}
}
