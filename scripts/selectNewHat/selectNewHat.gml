/// @desc select new hat
/// @arg isDisplayed change effect
function selectNewHat(isDisplayed) {

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
			if (isDisplayed) {
				displayHatChangeEffect();
			}
		}
	
		// If player has weapon, change current sprite
		if (hasWeapon) {
			changeStaffMagic();
		}
	}


}
