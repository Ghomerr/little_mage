function getFirstWallAbove(posX, posY, maxHeight) {
	var collidingWall = noone;
	for (var i = 0; i < maxHeight; i++) {
		collidingWall = collision_point(posX, posY - i * gameManager.TILE_SIZE, wallObject, false, true);
		if (collidingWall != noone) {
			break;
		}
	}
	return collidingWall;
}