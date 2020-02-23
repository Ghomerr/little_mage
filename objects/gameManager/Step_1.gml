/// @description Compute kill text scale
if (room != menuRoom and instance_exists(playerObject)) {
	
	// Update kills counter position
	if (global.kills > 0 and killsTextScale > 1) {
		// Reduce text scale to 1
		killsTextScale = max(killsTextScale * 0.95, 1);
		killsCounterX = killsTextX - (killsTextWidth + killsCounterOffset) * killsTextScale;
	}
	
	// Update coins counter position
	if (global.coins >= 0 and coinsTextScale > 1) {
		coinsTextScale = max(coinsTextScale * 0.95, 1);
		coinsTextX = coinsSpriteX + coinsCounterOffset * coinsTextScale;
		coinsTextShadowX = coinsTextX + 2;
	}
	
	if (heartSpriteScale > 1) {
		heartSpriteScale = max(heartSpriteScale * 0.95, 1);
		heartSpriteX = heartMiddleScreen - (playerObject.initHp * heartSpriteWidth * heartSpriteScale + (playerObject.initHp - 1) * heartSpriteGap ) / 2;
	}
}