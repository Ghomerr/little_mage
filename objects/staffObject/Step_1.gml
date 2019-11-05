// Player inputs to fire
if (!playerObject.controller) {
	// If no controller, get staff orientation from mouse
	image_angle = point_direction(x, y, mouse_x, mouse_y);
} else {
	// Compute angle from the gamepad inputs
	var controllerH = gamepad_axis_value(0, gp_axisrh);
	var controllerV = gamepad_axis_value(0, gp_axisrv);
	if (abs(controllerH) > playerObject.gpMin or abs(controllerV) > playerObject.gpMin) {
		controllerAngle = point_direction(0, 0, controllerH, controllerV);
	}
	image_angle = controllerAngle;
}

// Firing event
firingDelay--;
if ((mouse_check_button(mb_left) or gamepad_button_check(0, gp_shoulderrb)) and firingDelay < 0) {
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