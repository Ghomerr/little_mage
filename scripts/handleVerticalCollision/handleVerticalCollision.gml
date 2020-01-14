// Vertical collision

// Fix issue #14 :
// Check an integer value of vsp to avoid boucing gravity check
var wholeVsp = sign(vsp) ? ceil(vsp) : floor(vsp);

if (place_meeting(x, y + wholeVsp, wallObject)) {
	// Pixel perfect position
	while(!place_meeting(x, y + sign(vsp), wallObject)) {
		y += sign(vsp);
	}
	y = round(y); // avoid player floating a bit in the air
	isGrounded = vsp > 0; // grounded only if falling
	vsp = 0;
	return true;
} else {
	isGrounded = false;
	return false;
}