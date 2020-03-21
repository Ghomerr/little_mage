/// @description Reset kills in room and save layers
global.killsInRoom = 0;

// Layers
global.deadsLayer = layer_get_id("Deads");
global.projLayer = layer_get_id("Projectiles");
global.wallLayer = getLayer("Walls");

if (transitionsHandler.mode == TRANS_MODE.INTRO) {
	// Reset game speed
	game_set_speed(playerObject.GAME_SPEED, gamespeed_fps);
}