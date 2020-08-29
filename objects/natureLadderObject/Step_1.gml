/// @description Init ladder
// First ladder, initialize
if (totalHeight == 0) {
	// If the ladder is in the air, destroy it
	if (!collision_point(x, y + gameManager.TILE_SIZE, wallObject, false, true)) {
		with(staffObject) secondaryDelay = 0;
		instance_destroy();
		return;
	}
	
	ladderPos = 1;
	type = NAT_LADDER.BASE;
	
	// Check the available height
	var collidingWall = 
		collision_line(x, y, x, y - MAX_HEIGHT * gameManager.TILE_SIZE, wallObject, false, true);

	// If there is a wall
	if (collidingWall != noone) {
		// Total height is difference between the base and the wall
		// If it's a plateform, the ladder can go through, otherwise it stops before it
		totalHeight = (y - collidingWall.y) / gameManager.TILE_SIZE + (collidingWall.isPlatform ? 1 : 0);
		show_debug_message("colliding wall");
	} else {
		totalHeight = MAX_HEIGHT;
	}
	show_debug_message("ladder height=" + string(totalHeight));
}
