/// @desc Horizontal collision
/// @arg nextX to check
function handleHorizontalCollision(nextX) {
	var hasCollided = false;
	var oldWallX = 0;
	var oldWallY = 0;

	// Move wall to avoid auto-collision
	if (wall) {
		oldWallX = wall.x;
		oldWallY = wall.y;
		wall.x = -100;
		wall.y = -100;
	}

	if (place_meeting(nextX, y, wallObject)) {
	
		// No horizontal collision with platforms
		var collidingWall = instance_place(nextX, y, wallObject);
		if (!collidingWall.isPlatform) {
			// Handle pixel perfect position
			while(!place_meeting(x + sign(hsp), y, wallObject)) {
				x += sign(hsp);
			}
			hsp = 0; // block player from going through
			hasCollided = true;
		}
	}

	// Restore wall position
	if (wall) {
		wall.x = oldWallX;
		wall.y = oldWallY;
	}

	return hasCollided;
}
