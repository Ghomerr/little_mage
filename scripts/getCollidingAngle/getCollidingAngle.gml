/// @desc compute colliding angle
/// @arg collidingObject
function getCollidingAngle(argument0) {

	var topCheck = abs(bbox_bottom - argument0.bbox_top);
	var bottomCheck = abs(bbox_top - argument0.bbox_bottom);
	var leftCheck = abs(bbox_right - argument0.bbox_left);
	var rightCheck = abs(bbox_left - argument0.bbox_right);

	var minCollision = min(topCheck, bottomCheck, leftCheck, rightCheck);
	if (minCollision == topCheck) {
		return ANGLE.UP;
	}
	if (minCollision == bottomCheck) {
		return ANGLE.DOWN;
	}
	if (minCollision == leftCheck) {
		return ANGLE.LEFT;
	}
	if (minCollision == rightCheck) {
		return ANGLE.RIGHT;
	}


}
