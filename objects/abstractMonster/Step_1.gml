/// @description Check if dying to go dead
if (!isDying and hp <= 0) {
	// Shake screen on dying
	screenShake(6, 25);
	// Play dead sound
	audio_play_sound(monsterDeadSound, 10, false);
	
	isDying = true;
	sprite_index = hitSprite;
	direction = other.hitfrom;
	hsp = lengthdir_x(DYING_JUMP, direction);
	vsp = lengthdir_y(DYING_JUMP, direction) - DYING_JUMP;
	move =  (hsp != 0) ? sign(hsp) : 1;
	image_xscale *= sign(hsp);
}