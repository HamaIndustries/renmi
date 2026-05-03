package symbolics.division.renmi.mixin;


import net.fabricmc.fabric.api.networking.v1.PlayerLookup;
import net.fabricmc.fabric.api.networking.v1.ServerPlayNetworking;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.world.entity.Avatar;
import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.level.Level;
import org.spongepowered.asm.mixin.Mixin;
import symbolics.division.renmi.ReadingPlayer;
import symbolics.division.renmi.net.S2CStoryReadingPacket;

@Mixin(Player.class)
public abstract class PlayerMixin extends Avatar implements ReadingPlayer {
	private boolean reading = false;

	protected PlayerMixin(EntityType<? extends LivingEntity> type, Level level) {
		super(type, level);
	}

	@Override
	public void setReading(boolean reading) {
		this.reading = reading;
		if(!this.level().isClientSide()) {
			S2CStoryReadingPacket storyReadingPacket = new S2CStoryReadingPacket(getId(),reading);
			for (ServerPlayer player : PlayerLookup.level((ServerLevel) this.level())) {
				ServerPlayNetworking.send(player, storyReadingPacket);
			}
		}
	}

	@Override
	public boolean isReading() {
		return reading;
	}
}
