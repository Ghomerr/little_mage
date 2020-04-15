/// @desc return true if the given angle is between to others (flag strict)
/// @arg angle to check
/// @arg minAngle 
/// @arg maxAngle
/// @arg strict (default false)

var angle = argument0;
var minAngle = sign(argument0) ? angleRound(argument1) : angleRound(argument1) + ANGLE.COMPLETE;
var maxAngle = sign(argument0) ? angleRound(argument2) : angleRound(argument2) + ANGLE.COMPLETE;
var strict = false;

if (argument_count >= 4) {
	strict = argument[3];	
}

if (strict) {
	return angle > minAngle and angle < maxAngle;
} else {
	return angle >= minAngle and angle <= maxAngle;
}