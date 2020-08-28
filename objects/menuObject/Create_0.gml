/// @description Init menu

// Version
version = "v" + GM_version;

// Menu constants
titleText = "Magic Hat'venture";
guiWidth = display_get_gui_width();
guiHalfWidth = guiWidth / 2;
guiHeight = display_get_gui_height();
versionPos = 10;
guiMargin = 32;
menuHideOffset = 200; // to hide and show the menu
drawOffset = 2; // for outline
gpMin = 0.2; // minimum value for gamepad 
screenShakeLength = 30;

menuSpeed = 25;
font = menuFont;
fontHeight = font_get_size(menuFont) * 1.5;

menu[MENU_CHOICE.NEW_GAME] = "New Game";
menu[MENU_CHOICE.CONTINUE] = "Continue";
menu[MENU_CHOICE.QUIT] = "Quit";
length = array_length(menu);

// Menu variables
menuX = guiWidth + menuHideOffset;
menuY = guiHeight - guiMargin;
menuTargetX = guiWidth - guiMargin;
menuTop = menuY - fontHeight * length;

menuChoice = MENU_CHOICE.NEW_GAME;
hasControl = true;
gamepadIsChecked = false;
isChoiceDone = false;

