if (place_meeting(x, y, argument0)) {
	speed = 0;
	instance_create_layer(x, y, "Projectiles", burstObject);
	return true;
} else {
	return false;
}
