/// @description Check if player is in radius
if (hasText and instance_exists(playerObject)) {

	// Detect if player is in radius and add sign post outline
	if (point_in_circle(playerObject.x, playerObject.y, x, y, PLAYER_RADIUS)) {
		isPlayerInRadius = true;
		image_index = 1;
	} else {
		isPlayerInRadius = false;
		image_index = 0;
	}

	// Update frame counter
	frameCounter++;
	if (frameCounter >= gameManager.GAME_SPEED) {
		frameCounter = 0;
	}
}