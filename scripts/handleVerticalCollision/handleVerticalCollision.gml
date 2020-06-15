/// @desc Vertical collision
/// @arg nextY value with vsp
/// @arg ignorePlatform optional flag to pass through platforms

var nextY = argument[0];
var ignorePlatform = argument_count >= 2 ? argument[1] : false;

// Fix issue #14 :
// Check an integer value of vsp to avoid boucing gravity check

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

// Check if collision should occur vertically
if (place_meeting(x, nextY, wallObject)) {
	
	// If the wall is a platform and player is coming from beneath, no collision
	if (!isCollidingPlatform(x, nextY, ignorePlatform)) {
		// Pixel perfect position
		while(!place_meeting(x, y + sign(vsp), wallObject)) {
			y += sign(vsp);
		}
		y = round(y); // avoid player floating a bit in the air
	
		isGrounded = vsp > 0; // grounded only if falling
		vsp = 0;
		hasCollided = true;
	}
	
} else {
	isGrounded = false;
}

// Restore wall position
if (wall) {
	wall.x = oldWallX;
	wall.y = oldWallY;
}

return hasCollided;