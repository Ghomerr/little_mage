/// @description Open debug dialog
isDebugOpen = !isDebugOpen;

// Purge previous char input
keyboard_lastkey = -1;

// If player exists, block its controls and stop it
if (instance_exists(playerObject)) {
	if (isDebugOpen) {
		playerHasControl = playerObject.hasControl;
		playerObject.hasControl = false;
		playerObject.move = 0;
	} else {
		playerObject.hasControl = playerHasControl;
	}
}