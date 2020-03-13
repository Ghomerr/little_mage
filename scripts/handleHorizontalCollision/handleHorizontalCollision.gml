/// @desc Horizontal collision
/// @arg nextX to check

if (place_meeting(argument0, y, wallObject)) {
	
	// No horizontal collision with platforms
	var collidingWall = instance_place(argument0, y, wallObject);
	if (collidingWall.isPlatform) {
		return false;	
	} else {
		// Handle pixel perfect position
		while(!place_meeting(x + sign(hsp), y, wallObject)) {
			x += sign(hsp);
		}
		hsp = 0; // block player from going through
		return true;
	}
} else {
	return false;	
}