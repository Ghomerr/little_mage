// If a hat is selected
if (selectedHat != HATS.NONE) {
	if (selectedHat == currentHat) {
		// Same hat : remove it
		currentHat = HATS.NONE;
		enableColorSwapping = false;
		currentPalette = noone;
	} else {
		// It's a new hat : change it
		currentHat = selectedHat;
		enableColorSwapping = true;
		currentPalette = PLAYER_PALETTES[currentHat];
	}
	
	// If player has weapon, change current sprite
	if (hasWeapon) {
		with (staffObject) image_index = other.currentHat;
	}
}