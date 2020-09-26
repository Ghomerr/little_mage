/// @desc send this entity in the air after being hit
function beHitInTheAir() {
	var xLen = argument_count > 0 ? argument[0] : 6;
	var yLen = argument_count > 1 ? argument[1] : 4;

	var knockBackDirection = hitfrom;
	
	// Proper direction to be launched while on ground
	if (isGrounded) {
		// Player is on the right
		if (x > hitFromX) {
			knockBackDirection = irandom_range(20, 70);
		} else {
			knockBackDirection = irandom_range(110, 160);
		}
	}
	
	hsp = lengthdir_x(xLen, knockBackDirection);
	vsp = lengthdir_y(yLen, knockBackDirection);
	move = (hsp != 0) ? sign(hsp) : getDefaultSpeed();
	image_xscale *= -move;
}
