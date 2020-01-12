/// @desc set debug game speed
/// @arg debug factor modifier
with(playerObject) {
	if (isDebugEnabled) {
		debugFactor += argument0;
		// Slow game speed
		var debugSpeed = min(max(floor(GAME_SPEED/debugFactor), 1), GAME_SPEED);
		game_set_speed(debugSpeed, gamespeed_fps);
	}
}