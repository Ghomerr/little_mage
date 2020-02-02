/// @desc handle collisions with given entity type
/// @arg object type to check collision with
if (place_meeting(x, y, argument0)) {
	// Avoid self shooting
	var collidingInstance = instance_place(x, y, argument0);
	if (shooter == collidingInstance.id) {
		debugColor = c_green;
		return false;
	}
	
	debugColor = c_yellow;
	prjSpeed = 0;
	
	if (!isFalling) {
		// Avoid projectile to burst inside the wall object
		while(place_meeting(x, y, argument0)) {
			x -= lengthdir_x(1, direction);
			y -= lengthdir_y(1, direction);
		}
	}

	// Change into a burst
	instance_change(burstObject, true);
	
	return true;
} else {
	debugColor = c_red;
	return false;
}
