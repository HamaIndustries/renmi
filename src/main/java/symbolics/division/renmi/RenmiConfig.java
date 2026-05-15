package symbolics.division.renmi;

import dev.chailotl.bento_config.BentoConfig;
import dev.chailotl.bento_config.annotations.Range;

public class RenmiConfig extends BentoConfig<RenmiConfig> {
	@Range(min = 1, max = 10)
	public int textSpeed = 2;
}
