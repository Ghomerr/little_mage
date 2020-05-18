/// @description Init transition handler

// Transition constants
T_WIDTH = display_get_gui_width();
T_HEIGHT = display_get_gui_height();
T_HALF_HEIGHT = T_HEIGHT * 0.5;
T_SPEED = 10;
T_STEP = 0.005;
PERCENT_MAX = 1.1;
PERCENT_MIN = 0;

// Transitions variables
mode = TRANS_MODE.INTRO;
percent = PERCENT_MAX;
target = room;
playerX = 0;
playerY = 0;
staffAngle = 0;