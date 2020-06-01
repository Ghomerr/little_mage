/// @desc Handle event of coins counter update
/// @arg coinsTextScale value
/// @arg coinsColor value

// Check global coins if negative set to zero
if (global.coins < 0) {
	global.coins = 0;
} else if (global.coins > 0) {
	// Simulate player having picked coins up to be displayed
	global.coinsPickedUp = true;	
}

with (gameManager) {
	
	coinsText = string(global.coins);

	if (argument_count > 0) {
		coinsTextScale = argument[0];
		if (argument_count > 1) {
			coinsColor = argument[1];
		} else {
			coinsColor = c_orange;
		}
	} else {
		coinsTextX = coinsSpriteX + coinsCounterOffset * coinsTextScale;
		coinsTextShadowX = coinsTextX + 2;
	}
}