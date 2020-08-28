/// @desc Round angle values over 360 or under -360
/// @arg angle to round
function angleRound(angle) {

	if (angle >= ANGLE.COMPLETE) {
		return angle - ANGLE.COMPLETE;
	}
	if (angle <= -ANGLE.COMPLETE) {
		return angle + ANGLE.COMPLETE;
	}
	return angle;
}
