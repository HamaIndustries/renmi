package symbolics.division.renmi.client;

import net.fabricmc.api.ClientModInitializer;
import symbolics.division.renmi.Renmi;

public class RenmiClient implements ClientModInitializer {
	@Override
	public void onInitializeClient() {
		Renmi.PROXY = new RenmiClientProxy();
	}
}
