/// @desc be hit by something
/// @arg damage
if (flash <= 0) {
	if (argument0 > 0) {
		hp -= argument0;
		audio_sound_pitch(manaBoltHitSound, choose(0.8, 1.0, 1.2));
		audio_play_sound(manaBoltHitSound, 5, false);
		flash = hitDelay;
		projectileCounter = projectileDelay;
	}
	hitfrom = point_direction(x, y, other.x, other.y) + ANGLE.OPPOSITE;
	hitFromX = other.x;
}