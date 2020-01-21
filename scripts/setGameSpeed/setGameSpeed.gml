/// @desc set debug game speed
/// @arg debug factor modifier
with(playerObject) {
	if (isDebugEnabled) {
		debugFps += argument0;
		if (debugFps > GAME_SPEED) {
			debugFps = GAME_SPEED;
		} else if (debugFps < 1) {
			debugFps = 1;
		}
		// Slow game speed
		game_set_speed(debugFps, gamespeed_fps);
	}
}