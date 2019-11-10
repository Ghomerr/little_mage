/// @desc Move player on transition
with (transitionsHandler) {
	if (playerX != 0 and playerY != 0) {
		playerObject.x = playerX;
		playerObject.y = playerY;
		staffObject.image_angle = staffAngle;
	}
}