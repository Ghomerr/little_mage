function createWeaponOrHands() {
	with (playerObject) {
		if (!hasWeapon) {
			// Create hands
			with(instance_create_layer(x, y, layer, handsObject)) {
				depth = other.depth - 1; // Get in front of player
			}
			with(staffObject) {
				instance_destroy();	
			}
		} else {
			// Create staff
			with(instance_create_layer(x, y, layer, staffObject)) {
				depth = other.depth - 1; // Get in front of player
				// Set speed to 0 and staff sprite to default (last image)
				image_speed = 0;
				image_index = other.currentHat;
			}
			with(handsObject) {
				instance_destroy();	
			}
		}
	}
}
