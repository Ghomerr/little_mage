/// @description Toggle debug mode
if (!isDebugEnabled) {
	// Enable debug
	isDebugEnabled = true;
	// Slow game speed
	game_set_speed(GAME_SPEED/debugFactor, gamespeed_fps);
} else {
	// Disable debug
	isDebugEnabled = false;
	// Restore game speed
	game_set_speed(GAME_SPEED, gamespeed_fps);
}