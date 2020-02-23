/// @description Reset kills in room
global.killsInRoom = 0;

if (transitionsHandler.mode == TRANS_MODE.INTRO) {
	// Reset game speed
	game_set_speed(playerObject.GAME_SPEED, gamespeed_fps);
}