/// @desc Handle staff direction and firing

if (playerObject.hasControl) {
	// Player inputs to fire
	if (!playerObject.controller) {
		// If no controller, get staff orientation from mouse
		image_angle = point_direction(x, y, mouse_x, mouse_y);
		isAimingRight = sign(mouse_x - x) >= 0;
	} else {
		// Compute angle from the gamepad inputs
		var controllerH = gamepad_axis_value(0, gp_axisrh);
		var controllerV = gamepad_axis_value(0, gp_axisrv);
		
		if (abs(controllerH) > playerObject.gpMin) {
			image_angle = point_direction(0, 0, controllerH, controllerV);
			isAimingRight = sign(controllerH) >= 0;
			
		} else if (abs(controllerV) > playerObject.gpMin) {
			image_angle = point_direction(0, 0, controllerH, controllerV);
		}
	}
	

	// Firing event
	firingDelay--;
	if ((mouse_check_button(mb_left) or gamepad_button_check(0, gp_shoulderrb)) and firingDelay < 0) {
		// Screen shake
		//screenShake(2, 10);
		
		// Compute projectile start coordinates at the end of the staff
		var prjX = x + lengthdir_x(STAFF_LENGTH, image_angle);
		var prjY = y + lengthdir_y(STAFF_LENGTH, image_angle);
	
		// Create a new projectile using staff angle
		with (instance_create_layer(prjX, prjY, global.projLayer, projectile)) {
			// Set firing cooldown
			other.firingDelay = cooldown;
			
			shooter = playerObject.id;
			prjSpeed = DEFAULT_SPEED;
			direction = other.image_angle + random_range(-other.STAFF_DISPERSION, other.STAFF_DISPERSION);
			isAimingRight = other.isAimingRight;
			hsp = lengthdir_x(prjSpeed, direction);
			vsp = lengthdir_y(prjSpeed, direction);
			hspRatio = hsp / prjSpeed;
			vspRatio = vsp / prjSpeed;
			image_angle = direction;
		}
	}
}