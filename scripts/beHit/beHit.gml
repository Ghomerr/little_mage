/// @desc be hit by something
/// @arg damage
if (flash <= 0) {
	audio_sound_pitch(manaBoltHitSound, choose(0.8, 1.0, 1.2));
	audio_play_sound(manaBoltHitSound, 5, false);
	if (argument_count > 0) {
		hp -= argument[0];	
	} else {
		hp--;
	}
	flash = hitDelay;
	hitfrom = point_direction(x, y, other.x, other.y) + ANGLE.OPPOSITE;
	hitFromX = other.x;
}