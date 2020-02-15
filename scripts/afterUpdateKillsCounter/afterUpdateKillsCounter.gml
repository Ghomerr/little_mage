/// @desc Handle event of kills counter update
/// @arg killTextScale value

with (gameHandler) {
	if (argument_count > 0) {
		killsTextScale = argument[0];	
	}
	
	killsText = string(global.kills);
	var textWidth = string_width(killsText);
	killsCounterX = killsTextX - (textWidth + killsCounterOffset) * killsTextScale;
}