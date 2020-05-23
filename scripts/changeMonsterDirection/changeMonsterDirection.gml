/// @arg move value (optional)

if (!isCollidingOther) {
	// Flip movement when collinding another entity
	move = argument_count > 0 ? argument[0] : -move;
	hsp *= move;
	debugColor = c_yellow;
	isCollidingOther = true;
}