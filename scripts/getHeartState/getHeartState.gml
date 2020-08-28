/// @desc get heart state to display
/// @arg heartPos 0 to 3
function getHeartState(heartPos) {

	var heartState = HEART.EMPTY;
	with (playerObject) {
		// Every heart post under hp value are full
		heartState = heartPos < hp and isVisible ? HEART.FULL : HEART.EMPTY;
		
		// If heart is not empty and player has death heatys
		if (heartState == HEART.FULL and deathHearts > 0) {
			// Check if this heart is a death one
			var deltaHp = hp - deathHearts;
			if (heartPos >= deltaHp) {
				// If least heart, display death heart status
				if (heartPos == hp - 1) {
					// Display death heart status depending of the counter
					if (deathHeartsCounter > deathHeartsTimer * 0.75) {
						heartState = HEART.DEATH_FULL;
					} else if (deathHeartsCounter > deathHeartsTimer * 0.5) {
						heartState = HEART.DEATH_GOOD;
					} else if (deathHeartsCounter > deathHeartsTimer * 0.25) {
						heartState = HEART.DEATH_MID;
					} else {
						heartState = HEART.DEATH_CRIT;
					}
				} else {
					// Death heart is full
					heartState = HEART.DEATH_FULL;
				}
			}
		}
	}
	return heartState;
}
