/// @desc Vertical collision
/// @arg nextY value with vsp

// Fix issue #14 :
// Check an integer value of vsp to avoid boucing gravity check


// Check if collision should occur vertically
if (place_meeting(x, argument0, wallObject)) {
	
	// If the wall is a platform and player is coming from beneath, no collision
	if (isCollidingPlatform(x, argument0)) {
		return false;
	} else {
		// Pixel perfect position
		while(!place_meeting(x, y + sign(vsp), wallObject)) {
			y += sign(vsp);
		}
		y = round(y); // avoid player floating a bit in the air
	
		isGrounded = vsp > 0; // grounded only if falling
		vsp = 0;
		return true;
	}
	
} else {
	isGrounded = false;
	return false;
}