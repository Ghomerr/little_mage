/// @desc be hit by something
if (flash <= 0) {
	audio_sound_pitch(manaBoltHitSound, choose(0.8, 1.0, 1.2));
	audio_play_sound(manaBoltHitSound, 5, false);
	hp--;
	flash = hitDelay;
	hitfrom = point_direction(x, y, other.x, other.y) + 180;
	hitFromX = other.x;
}