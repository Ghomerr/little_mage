/// @desc Handle staff direction and firing

if (primaryDelay > 0) {
	primaryDelay--;
}
if (secondaryDelay > 0) {
	secondaryDelay--;
}

if (playerObject.hasControl) {
	if (playerObject.isOnLadder) {
		sprite_index = staffOnlySprite;
		image_angle = ANGLE.HALF_CORNER;
	} else {
		sprite_index = staffSprite;
		
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

		// Primary action
		if (primaryDelay <= 0) {
			if (mouse_check_button(mb_left) or gamepad_button_check(0, gp_shoulderrb)) {
				// Primary magic
		
				// Compute projectile start coordinates at the end of the staff
				var prjX = x + lengthdir_x(STAFF_LENGTH, image_angle);
				var prjY = y + lengthdir_y(STAFF_LENGTH, image_angle);
	
				// Create a new projectile using staff angle
				with (instance_create_layer(prjX, prjY, global.projLayer, projectile)) {
					// Set firing cooldown
					other.primaryDelay = cooldown;
					other.primaryCooldown = cooldown;
			
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
		
		// Secondary action
		if (secondaryDelay <= 0) {
			 if (secondary != noone and (mouse_check_button(mb_right) or gamepad_button_check(0, gp_face3))) {
				// Get secondary magic init position
				var secX, secY;
				with (playerObject) {
					secX = getOnTileX(0.5);
					secY = getOnTileY(0.5);
				}
				
				// Check collision with environment
				if (!collision_point(
					secX,
					secY,
					environmentObject,
					false,
					true))
				{
					// Use secondary magic
					with(instance_create_layer(secX, secY, getLayer(LAYER.ENTITIES), other.secondary)) {
						// Set firing cooldown
						other.secondaryDelay = cooldown;
						other.secondaryCooldown = cooldown;
					}
				}
			}
		}
	}
}