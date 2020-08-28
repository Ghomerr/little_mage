/// @desc update vsp with gravity
/// @arg vsp to check
/// @arg max vsp value = jump
function updateVspWithGravity(vspCheck, maxVsp) {
	if (vspCheck < maxVsp) {
		vsp += grv;
	}
}
