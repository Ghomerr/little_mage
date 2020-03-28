/// @description Update hsp according to staff angle

if (instance_exists(staffObject)) {
	var angleDelta = staffObject.image_angle - direction;
	
	show_debug_message("angleDeltat=" + string(angleDelta));
	
	if (abs(angleDelta) > STEP_ANGLE) {
		direction += sign(angleDelta) * STEP_ANGLE;
		hsp = lengthdir_x(prjSpeed, direction);
		vsp = lengthdir_y(prjSpeed, direction);
	}
}
