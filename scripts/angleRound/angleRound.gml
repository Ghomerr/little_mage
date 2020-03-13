/// @desc Round angle values over 360 or under -360
/// @arg angle to round

if (argument0 >= 360) {
	return argument0 - 360;
}
if (argument0 <= -360) {
	return argument0 + 360;
}
return argument0;