/// @desc Add a Death Heart to the player
if (instance_exists(playerObject)) {
	with (playerObject) {
		if (hp < initHp) {
			deathHearts++;
			hp++;
			if (deathHeartsCounter <= 0) {
				deathHeartsCounter = deathHeartsTimer;
			}
			with(gameManager) heartSpriteScale = 2;
		}
	}
}