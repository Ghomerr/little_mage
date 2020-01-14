if (place_meeting(x, y, argument0)) {
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
