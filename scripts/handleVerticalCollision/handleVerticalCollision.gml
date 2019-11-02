// Vertical collision
if (place_meeting(x, y + vsp, wallObject)) {
	// Pixel perfect position
	while(!place_meeting(x, y + sign(vsp), wallObject)) {
		y += sign(vsp);
	}
	isGrounded = vsp > 0; // grounded only if falling
	vsp = 0;
	return true;
} else {
	isGrounded = false;
	return false;
}