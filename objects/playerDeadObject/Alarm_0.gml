/// @description Restart room

// Reset game speed
game_set_speed(playerObject.GAME_SPEED, gamespeed_fps);
startTransition(TRANS_MODE.GOTO, room);