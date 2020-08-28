/// @desc set debug game speed
/// @arg debug factor modifier
function setGameSpeed(argument0) {

	debugFps += argument0;

	if (debugFps > GAME_SPEED) {
		debugFps = GAME_SPEED;
	} else if (debugFps < 1) {
		debugFps = 1;
	}

	currentFpsDisplay = string(debugFps);

	// Slow game speed
	game_set_speed(debugFps, gamespeed_fps);



}
