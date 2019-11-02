if (place_meeting(x, y, argument0)) {
	speed = 0;
	instance_create_layer(x, y, "Projectiles", burstObject);
	instance_destroy();
	return true;
} else {
	return false;
}
