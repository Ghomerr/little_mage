/// @description Increase debug factor
if (isDebugEnabled) {
	debugFactor += 5;
	// Slow game speed
	game_set_speed(GAME_SPEED/debugFactor, gamespeed_fps);
}