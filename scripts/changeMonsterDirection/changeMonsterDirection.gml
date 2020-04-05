if (!isCollidingOther) {
	// Flip movement when collinding another entity
	move = -move;
	hsp *= move;
	debugColor = c_yellow;
	isCollidingOther = true;
}