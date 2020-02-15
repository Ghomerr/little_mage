/// @description Init

// Resolution const
#macro RES_W 1024
#macro RES_H 768

// Force GUI size
display_set_gui_size(RES_W, RES_H);

// Score handling
global.kills = 0;
global.killsInRoom = 0;
killsTextScale = 1;
killsTextShadowX = RES_W - 8;
killsTextShadowY = 12;
killsTextX = killsTextShadowX - 2;
killsTextY = killsTextShadowY - 2;
killsCounterOffset = 10;
killsCounterY = killsTextY + 2;
killsCounterX = RES_W;
killsText = "";