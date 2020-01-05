/// @description Handle collision with shootable objects first then walls
if (handleCollisionWith(shootableObject)) {
	with(instance_place(x, y, shootableObject)) {
		if (!isDying) {
			audio_sound_pitch(manaBoltHitSound, choose(0.8, 1.0, 1.2));
			audio_play_sound(manaBoltHitSound, 5, false);
			hp--;
			flash = hitDelay;
			hitfrom = other.direction
		}
	}
	instance_destroy();
} else {
	if (handleCollisionWith(wallObject)) {
		instance_destroy();	
	}
}
