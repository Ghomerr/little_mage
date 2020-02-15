/// @description Init

// Resolution const
#macro RES_W 1024
#macro RES_H 768

// Force GUI size
display_set_gui_size(RES_W, RES_H);

// Money handling
global.coins = 0;
coinsTextScale = 1;
coinsSpriteX = 10;
coinsSpriteY = 12;
coinsSpriteWidth = sprite_get_width(coinsCounterSprite);
coinsCounterOffset = coinsSpriteWidth;
coinsTextShadowX = 12 + coinsCounterOffset;
coinsTextShadowY = 12;
coinsTextX = coinsCounterOffset + coinsTextShadowX + 2;
coinsTextY = 10;
coinsText = "";

// Kills score handling
global.kills = 0;
global.killsInRoom = 0;
killsTextScale = 1;
killsTextShadowX = RES_W - 8;
killsTextShadowY = 12;
killsTextX = RES_W - 10;
killsTextY = 10;
killsCounterOffset = 10;
killsCounterY = 12;
killsCounterX = killsTextX - (0 + killsCounterOffset) * killsTextScale;
killsText = "";
killsTextWidth = 0;

