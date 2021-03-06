/// @description SaveGame, reset kills in room and save layers
autoSaveGame();

global.killsInRoom = 0;

// Layers
global.projLayer = getLayer(LAYER.PROJECTILES);
global.playerLayer = getLayer(LAYER.PLAYER);
global.monstersLayer = getLayer(LAYER.MONSTERS);
global.entitiesLayer = getLayer(LAYER.ENTITIES);
global.deadsLayer = getLayer(LAYER.DEADS);
global.wallLayer = getLayer(LAYER.WALLS);

if (transitionsHandler.mode == TRANS_MODE.INTRO) {
	// Reset game speed
	game_set_speed(gameManager.GAME_SPEED, gamespeed_fps);
}

// DEBUG
isDebugOpen = false;