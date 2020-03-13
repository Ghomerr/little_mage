/// @description Restart room

// Restart room
startTransition(TRANS_MODE.GOTO, room);

// Reset current room kills
global.kills -= global.killsInRoom;
afterUpdateKillsCounter();

// Reset coins color
global.coinsPickedUp = global.coins > 0
afterUpdateCoinsCounter(1, c_orange);