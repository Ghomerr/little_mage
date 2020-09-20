/// @description Init

// TODO : automate these
// Layers (Dont forget : Room End + Room Start + getLayer script !)
global.projLayer = -1;
global.playerLayer = -1;
global.monstersLayer = -1;
global.entitiesLayer = -1;
global.deadsLayer = -1;
global.wallLayer = -1;

// Effetcs
global.frozenFactor = 0.3;

// Resolution const
#macro RES_W 1024
#macro RES_H 576
middleScreen = RES_W / 2;

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
heartSpriteGap = 4;
heartSpriteY = 12;
heartSpriteX = middleScreen - (playerObject.initHp * heartSpriteWidth + (playerObject.initHp - 1) * heartSpriteGap ) / 2;

// Magic frame
frameSpriteOffsetX = 5;
frameSpriteOffsetY = 5;
frameSpriteWidth = sprite_get_width(frameSprite);
frameSpriteHeight = sprite_get_height(frameSprite);

primaryFramePosX = middleScreen - frameSpriteWidth - frameSpriteOffsetX;
secondayFramePosX = middleScreen + frameSpriteOffsetX;
frameSpritePosY = RES_H - frameSpriteOffsetY;
primaryFrameCenterPosX = primaryFramePosX + frameSpriteWidth / 2;
secondaryFrameCenterPosX = secondayFramePosX + frameSpriteWidth / 2;
frameCenterPosY = frameSpritePosY - frameSpriteWidth / 2;

secondaryEnergyBarPosX = secondayFramePosX;
secondaryEnergyBarPosY = frameSpritePosY - frameSpriteHeight;
secondaryEnergyBarCenterY = secondaryEnergyBarPosY - (frameSpriteWidth / 2);
secondaryEnergyBarRectX1 = secondaryEnergyBarPosX + 3;
secondaryEnergyBarRectY1 = secondaryEnergyBarCenterY + 6;
secondaryEnergyBarRectY2 = secondaryEnergyBarCenterY - 6;
secondaryEnergyBarRectHeight = 24;

// Magic Frame GUI Config : 
PRIMARY_MAGIC_FRAME_GUI_CONF = getPrimaryMagicFrameGuiConfig();
SECONDRARY_MAGIC_FRAME_GUI_CONF = getSecondrayMagicFrameGuiConfig();

GAME_SPEED = game_get_speed(gamespeed_fps);
TILE_SIZE = 16;
PIE_RADIUS = 10;

// Debug
playerHasControl = false;
isDebugOpen = false;
isDebugFpsEnabled = false;
debugFps = GAME_SPEED/2;
currentFpsDisplay = string(debugFps);
debugText = "";
commandResult = "";
commandResultColor = c_yellow;
PREV_CMD_MAX = 10;
previousCommands = array_create(PREV_CMD_MAX, "");
cmdCount = 0;
lastCmd = -1;
prevCmdCursor = -1;