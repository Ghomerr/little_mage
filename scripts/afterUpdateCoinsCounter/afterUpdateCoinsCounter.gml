/// @desc Handle event of coins counter update
/// @arg coinsTextScale value

with (gameHandler) {
	
	coinsText = string(global.coins);

	if (argument_count > 0) {
		coinsTextScale = argument[0];
	} else {
		coinsTextX = coinsSpriteX + coinsCounterOffset * coinsTextScale;
		coinsTextShadowX = coinsTextX + 2;
	}
}