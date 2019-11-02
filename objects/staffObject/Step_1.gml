// Firing event
firingDelay--;
if (mouse_check_button(mb_left) and firingDelay < 0) {
	// Set firing cooldown
	firingDelay = firingCooldown;
	
	// Compute projectile start coordinates at the end of the staff
	var prjX = x + lengthdir_x(8, image_angle);
	var prjY = y + lengthdir_y(8, image_angle);
	
	// Create a new projectile using staff angle
	with (instance_create_layer(prjX, prjY, "Projectiles", flameProjectileObject)) {
		speed = prjSpeed;
		direction = other.image_angle + random_range(-3, 3);
		image_angle = direction;
	}
}