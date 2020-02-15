/// @description Compute kill text scale
if (room != menuRoom and instance_exists(playerObject) and global.kills > 0) {
	if (killsTextScale > 1) {
		// Reduce text scale to 1
		killsTextScale = max (killsTextScale * 0.95, 1);
		
		var textWidth = string_width(killsText);
		killsCounterX = killsTextX - (textWidth + killsCounterOffset) * killsTextScale;
	}
}