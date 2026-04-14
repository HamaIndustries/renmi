package symbolics.division.renmi.client;

import net.minecraft.client.Minecraft;
import symbolics.division.renmi.RenmiProxy;
import symbolics.division.renmi.block.entity.StoryLocusBlockEntity;
import symbolics.division.renmi.client.gui.StoryLocusScreen;

public class RenmiClientProxy extends RenmiProxy {
	@Override
	public void openStoryLocusScreen(StoryLocusBlockEntity be) {
		Minecraft.getInstance().setScreen(new StoryLocusScreen(be));
	}
}
