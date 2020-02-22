/// @description Restart room

// Restart room
startTransition(TRANS_MODE.GOTO, room);

// Reset game speed
game_set_speed(playerObject.GAME_SPEED, gamespeed_fps);

// Reset current room kills
global.kills -= global.killsInRoom;
afterUpdateKillsCounter();
// Reset coins color
global.coinsPickedUp = global.coins > 0;
afterUpdateCoinsCounter(1, c_orange);