/// @description Init

// Layers
global.projLayer = -1;
global.playerLayer = -1;
global.deadsLayer = -1;
global.wallLayer = -1;

// Effetcs
global.frozenFactor = 0.3;

// Resolution const
#macro RES_W 1024
#macro RES_H 768

// Force GUI size
display_set_gui_size(RES_W, RES_H);

// Money handling
global.coins = 0;
global.coinsPickedUp = false;
coinsColor = c_orange;
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

// Health bar
heartSpriteScale = 1;
heartSpriteWidth = sprite_get_width(heartSprite);
heartMiddleScreen = RES_W / 2;
heartSpriteGap = 4;
heartSpriteY = 12;
heartSpriteX = heartMiddleScreen - (playerObject.initHp * heartSpriteWidth + (playerObject.initHp - 1) * heartSpriteGap ) / 2;