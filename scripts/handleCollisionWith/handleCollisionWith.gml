/// @desc handle collisions
if (x < 0 or y < 0 or x > room_width or y > room_height) {
	// Destroy if out of screen
	instance_destroy();
 
} else if (place_meeting(x, y, argument0)) {
	prjSpeed = 0;
	
	// Avoid projectile to burst inside the wall object
	while(place_meeting(x, y, argument0)) {
		x -= lengthdir_x(1, direction);
		y -= lengthdir_y(1, direction);
	}

	// Change into a burst
	instance_change(burstObject, true);
	
	return true;
} else {
	return false;
}
