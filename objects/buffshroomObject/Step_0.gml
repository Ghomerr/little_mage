initMovement();

// While not dying, do normal cycle 
if (!isDying) {
	if (handleHorizontalCollision()) {
		// Reverse direction
		move = -move;
	}
	handleVerticalCollision();
	updatePosition();
	handleAnimations();
	
} else {
	// When dying, handle only the falling
	handleHorizontalCollision();
	// If dying and is grounded, change to dead object
	if (handleVerticalCollision() and isGrounded) {
		with(instance_create_layer(round(x), round(y), layer, buffshroomDeadObject)) {
			image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		}
		instance_destroy();
	}
	updatePosition();
}