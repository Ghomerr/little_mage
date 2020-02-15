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
	
	// Start player dying
	isDying = true;
	sprite_index = hitSprite;
	beHitInTheAir();
}