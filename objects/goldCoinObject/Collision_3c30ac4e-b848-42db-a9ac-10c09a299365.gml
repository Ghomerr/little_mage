/// @description Pickup coin
global.coins++;
global.coinsPickedUp = true;
afterUpdateCoinsCounter(2);

event_inherited();