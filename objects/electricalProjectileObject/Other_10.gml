/// @description Add electrical shock counter
if (hasCollidedLivingEntity) {
	collidingInstance.elecShockCounter = elecShockTimer;

	audio_play_sound(electricalBurstSound, 3, false);
}