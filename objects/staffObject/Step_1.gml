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
			controllerAngle = point_direction(0, 0, controllerH, controllerV);
			isAimingRight = sign(controllerH) >= 0;
			
		} else if (abs(controllerV) > playerObject.gpMin) {
			controllerAngle = point_direction(0, 0, controllerH, controllerV);
		}
		image_angle = controllerAngle;
	}

	// Firing event
	firingDelay--;
	if ((mouse_check_button(mb_left) or gamepad_button_check(0, gp_shoulderrb)) and firingDelay < 0) {
		// Screen shake
		//screenShake(2, 10);
		
		// Play sound
		audio_sound_pitch(sound, choose(0.9, 1.0, 1.1));
		audio_play_sound(sound, 5, false);
		
		// Set firing cooldown
		firingDelay = firingCooldown;
	
		// Compute projectile start coordinates at the end of the staff
		var prjX = x + lengthdir_x(STAFF_LENGTH, image_angle);
		var prjY = y + lengthdir_y(STAFF_LENGTH, image_angle);
	
		// Create a new projectile using staff angle
		with (instance_create_layer(prjX, prjY, "Projectiles", projectile)) {
			shooter = playerObject.id;
			prjSpeed = DEFAULT_SPEED;
			direction = other.image_angle + random_range(-other.STAFF_DISPERSION, other.STAFF_DISPERSION);
			image_angle = direction;
		}
	}
}