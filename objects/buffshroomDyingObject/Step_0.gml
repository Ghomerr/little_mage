initMovement();

handleHorizontalCollision();

if (handleVerticalCollision() and isGrounded) {
	instance_create_layer(x, y, layer, buffshroomDeadObject);
	instance_destroy();
}

updatePosition();