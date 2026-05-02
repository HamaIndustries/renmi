package symbolics.division.renmi.client.gui.stage;

import net.minecraft.client.Minecraft;
import net.minecraft.client.multiplayer.ClientLevel;
import net.minecraft.client.player.LocalPlayer;
import net.minecraft.resources.Identifier;
import net.minecraft.sounds.SoundEvent;
import net.minecraft.sounds.SoundSource;

import java.util.Optional;

public record SoundDirection(
	Identifier id,
	Optional<Float> volume,
	Optional<Float> pitch
) implements StageDirection {
	public void playSound(){
		LocalPlayer player = Minecraft.getInstance().player;
		ClientLevel clientLevel = (ClientLevel) player.level();
		float volume = volume().orElse(1F);
		float pitch = volume().orElse(1F);
		clientLevel.playSound(player, player.blockPosition(),  SoundEvent.createVariableRangeEvent(id()), SoundSource.VOICE, volume,pitch);
	}
}
