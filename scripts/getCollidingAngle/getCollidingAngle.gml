/// @desc compute colliding angle
/// @arg collidingObject
function getCollidingAngle(collidingObject) {

	var topCheck = abs(bbox_bottom - collidingObject.bbox_top);
	var bottomCheck = abs(bbox_top - collidingObject.bbox_bottom);
	var leftCheck = abs(bbox_right - collidingObject.bbox_left);
	var rightCheck = abs(bbox_left - collidingObject.bbox_right);

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
