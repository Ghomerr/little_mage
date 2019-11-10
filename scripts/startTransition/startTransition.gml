/// @description Start a transition
/// @arg transitionMode transition mode to use
/// @arg targetRoom (optional) room to enter
/// @arg playerX (optional) used to move player X coordinate
/// @arg playerY (optional) used to move player Y coordinate
/// @arg playerOrientation (optional) used to set the new orientation of the player sprite
with (transitionsHandler) {
	mode = argument[0];
	if (argument_count > 1) {
		target = argument[1];
	}
	if (argument_count > 2) {
		playerX = argument[2];
		playerY = argument[3];
		playerOrientation = argument[4];
	} else {
		playerX = 0;
		playerY = 0;
		playerOrientation = 1;
	}
}