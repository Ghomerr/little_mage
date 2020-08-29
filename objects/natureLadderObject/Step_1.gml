/// @description Init ladder
// First ladder, initialize
if (totalHeight == 0) {
	// If the ladder is in the air or has a owner (used as hitbox) : destroy it
	var groundWall = instance_place(x, y + gameManager.TILE_SIZE, wallObject);
	if (groundWall == noone or groundWall.owner != noone) {
		with(staffObject) secondaryDelay = 0;
		instance_destroy();
		return;
	}
	
	ladderPos = 1;
	type = NAT_LADDER.BASE;
	
	// Check the available height
	var collidingWall = getFirstWallAbove(x, y, MAX_HEIGHT);
	// If there is a wall above the ladder
	if (collidingWall != noone) {
		// Total height is difference between the base and the wall
		// If it's a plateform, the ladder can go through, otherwise it stops before it
		totalHeight = floor((y - collidingWall.y) / gameManager.TILE_SIZE) + (collidingWall.isPlatform ? 1 : 0);
	} else {
		totalHeight = MAX_HEIGHT;
	}
	
	// Manage other ladders
	with(staffObject) {
		if (instance_exists(natureLadders.list[natureLadders.cursor])) {
			// If there is already a ladder at this index, destroy the ladder
			instance_destroy(natureLadders.list[natureLadders.cursor]);
		}
		// Add the new ladder to the array
		natureLadders.list[natureLadders.cursor++] = other.id;
		if (natureLadders.cursor >= natureLadders.maxi) {
			// Handle array index out of bound
			natureLadders.cursor = 0;
		}
	}
}
