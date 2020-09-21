/// @desc Check if the given object is in line of sight in the given range
/// @arg range of the line 
/// @arg object to check
function isInLineOfSight(range, object) {
	var hspSign = hsp == 0 ? 1 : sign(hsp);
	return collision_line(x, y-1, x + hspSign * shootingRange, y+1, object, false, true);
}