/// @description Handle updates
initMovement();
debugColor = c_red;

// While not dying, do normal cycle 
if (!isDying) {
	
	// Dont walk off edges
	if (isGrounded and isAfraidOfHeight and !place_meeting(x + sign(hsp) * (spriteWidth+1) + hsp, y + 1, wallObject)) {
		// Reverse direction
		move = -move;
		debugColor = c_green;
	}
	
	if (handleHorizontalCollision()) {
		// Reverse direction
		move = -move;
		debugColor = c_blue;
	}
	
	handleVerticalCollision();
	updatePosition();
	handleAnimations();
	
} else {
	// When dying, handle only the falling
	handleHorizontalCollision();
	// If dying and is grounded, change to dead object
	if (handleVerticalCollision() and isGrounded) {
		with(instance_create_layer(round(x), round(y), global.deadsLayer, deadObject)) {
			image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		}
		instance_destroy();
	}
	updatePosition();
}