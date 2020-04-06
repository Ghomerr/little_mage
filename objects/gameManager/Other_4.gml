/// @description Reset kills in room and save layers
global.killsInRoom = 0;

// Layers
global.projLayer = getLayer(LAYER.PROJECTILES);
global.deadsLayer = getLayer(LAYER.DEADS);
global.wallLayer = getLayer(LAYER.WALLS);

if (transitionsHandler.mode == TRANS_MODE.INTRO) {
	// Reset game speed
	game_set_speed(playerObject.GAME_SPEED, gamespeed_fps);
}