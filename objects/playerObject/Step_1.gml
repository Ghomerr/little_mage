/// @description Check if dying to go dead
if (isVisible and !isDying and (hp <= 0 or y >= maxYbeforeDead)) {
	hasControl = false;
	// Shake screen on dying
	screenShake(4, 30);
	// Play dead sound
	audio_play_sound(monsterDeadSound, 10, false);
	
	// Remove staff or hands
	with (staffObject) instance_destroy();
	with (handsObject) instance_destroy();

	// Slow mo
	game_set_speed(GAME_SPEED/2, gamespeed_fps);
	
	isDying = true;
	sprite_index = hitSprite;
	direction = point_direction(lastMonster.x, lastMonster.y, x, y);
	hsp = lengthdir_x(6, direction);
	vsp = lengthdir_y(4, direction)-2;
	move =  (hsp != 0) ? sign(hsp) : 1;
	image_xscale = -move;
}