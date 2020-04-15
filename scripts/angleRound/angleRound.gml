/// @desc Round angle values over 360 or under -360
/// @arg angle to round

if (argument0 >= ANGLE.COMPLETE) {
	return argument0 - ANGLE.COMPLETE;
}
if (argument0 <= -ANGLE.COMPLETE) {
	return argument0 + ANGLE.COMPLETE;
}
return argument0;