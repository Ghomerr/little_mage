/// @desc Move player on transition
/// @arg initX initial x position of player
/// @arg initY initial y position of player

// Get initial values or zero
var initX = argument_count > 0 ? argument[0] : 0;
var initY = argument_count > 1 ? argument[1] : 0;

// Handle weaponn or hands creation
with (playerObject) {
	if (!hasWeapon) {
		// Create hands
		with(instance_create_layer(x, y, layer, handsObject)) {
			depth = other.depth - 1; // Get in front of player
		}
	} else {
		// Create staff
		with(instance_create_layer(x, y, layer, staffObject)) {
			depth = other.depth - 1; // Get in front of player
			// Set speed to 0 and staff sprite to default (last image)
			image_speed = 0;
			image_index = other.currentHat;
		}
	}
}

with (transitionsHandler) {
	// If transition helper is set, overwrite these values
	if (playerX != 0 and playerY != 0) {
		initX = playerX;
		initY = playerY;
	}
	
	// If values are set, update player position
	if (initX != 0 and initY != 0) {
		with (playerObject) {
			x = initX;
			y = initY;
			hasControl = true;
			isVisible = true;
			if (hasWeapon) {
				// Turn player to the right side after transition
				staffObject.isAimingRight = other.staffAngle == 0;
				staffObject.image_angle = other.staffAngle;
			}
		}
	}
	
	// Reset transition handler
	playerX = 0;
	playerY = 0;
}

// Remove dead player and reset camera
with (playerObject) {
	if (instance_exists(playerDeadObject)) {
		cameraObject.follow = playerObject;
		with(playerDeadObject) {
			instance_destroy();
		}
	}
}