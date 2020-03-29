/// @description Update hsp according to staff angle

if (instance_exists(staffObject)) {
	var angleDelta = angle_difference(direction, staffObject.image_angle);
	if (abs(angleDelta) > projectileStepAngle) {
		direction -= projectileStepAngle * sign(angleDelta);
		hsp = lengthdir_x(prjSpeed, direction);
		vsp = lengthdir_y(prjSpeed, direction);
	}
}
