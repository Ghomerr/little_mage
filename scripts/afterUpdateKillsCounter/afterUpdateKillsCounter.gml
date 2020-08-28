/// @desc Handle event of kills counter update
/// @arg killTextScale value
function afterUpdateKillsCounter() {

	with (gameManager) {
	
		killsText = string(global.kills);
		killsTextWidth = string_width(killsText);
	
		if (argument_count > 0) {
			killsTextScale = argument[0];
		} else {
			killsCounterX = killsTextX - (killsTextWidth + killsCounterOffset) * killsTextScale;
		}
	}


}
