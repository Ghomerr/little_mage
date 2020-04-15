/// @desc return true if the given angle is between to others (flag strict)
/// @arg angle to check
/// @arg minAngle 
/// @arg maxAngle
/// @arg strict (default false)

var angle = sign(argument0) ? argument0 : argument0 + ANGLE.COMPLETE;
var minAngle = argument1;
var maxAngle = argument2;
var strict = false;

if (angle > maxAngle) {
	angle -= ANGLE.COMPLETE;	
}

if (argument_count >= 4) {
	strict = argument[3];	
}

if (strict) {
	return angle > minAngle and angle < maxAngle;
} else {
	return angle >= minAngle and angle <= maxAngle;
}