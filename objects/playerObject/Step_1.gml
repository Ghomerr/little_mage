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
	
	// Coins update + color
	global.coins -= 10;
	afterUpdateCoinsCounter(2, c_red);
	
	// Only if player is dying because of falling
	with(gameManager) {
		if (heartSpriteScale == 1) {
			heartSpriteScale = 2;
		}
	}
	
	// Start player dying
	isDying = true;
	sprite_index = hitSprite;
	invulCounter = 0;
	beHitInTheAir();
}