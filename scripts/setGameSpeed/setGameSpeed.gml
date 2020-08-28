/// @desc set debug game speed
/// @arg fpsValue factor modifier
function setGameSpeed(fpsValue) {

	debugFps += fpsValue;

	if (debugFps > GAME_SPEED) {
		debugFps = GAME_SPEED;
	} else if (debugFps < 1) {
		debugFps = 1;
	}

	currentFpsDisplay = string(debugFps);

	// Slow game speed
	game_set_speed(debugFps, gamespeed_fps);
}
