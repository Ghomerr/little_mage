initMovement();

if (handleHorizontalCollision()) {
	// Reverse direction
	move = -move;
}

handleVerticalCollision();

updatePosition();

handleAnimations();