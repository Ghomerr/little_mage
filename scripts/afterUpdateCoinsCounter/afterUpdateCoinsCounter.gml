/// @desc Handle event of coins counter update
/// @arg coinsTextScale value
/// @arg coinsColor value

with (gameHandler) {
	
	coinsText = string(global.coins);

	if (argument_count > 0) {
		coinsTextScale = argument[0];
		if (argument_count > 1) {
			coinsColor = argument[1];
		}
	} else {
		coinsTextX = coinsSpriteX + coinsCounterOffset * coinsTextScale;
		coinsTextShadowX = coinsTextX + 2;
	}
}