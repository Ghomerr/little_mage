/// @description Collisions with monsters
if (handleCollisionWith(other)) {
	with(other) {
		if (!isDying) {
			audio_sound_pitch(manaBoltHitSound, choose(0.8, 1.0, 1.2));
			audio_play_sound(manaBoltHitSound, 5, false);
			hp--;
			flash = hitDelay;
			hitfrom = other.direction
		}
	}
}