/// @desc Handle fall damage of a living entity
function handleFallDamages() {
	if (!isGrounded and fallFirstY == 0 and vsp > 0) {
		fallFirstY = y;
	} else if (isGrounded and fallFirstY != 0) {
		var tilesFelt = round((y - fallFirstY) / gameManager.TILE_SIZE);
		if (tilesFelt >= 8) {
			// Deal 1 damage every 8 tiles felt
			beHit(floor(tilesFelt / 8));
		}
		fallFirstY = 0;
	} else if (isOnLadder) {
		// No fall damage on ladders
		fallFirstY = 0;
	}
}