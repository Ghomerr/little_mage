/// @description Turn the sprite
image_angle = angleRound(collidingAngle + ANGLE.OPPOSITE);

// Pixel perfect correction 
show_debug_message("image_angle=" + string(image_angle));
switch (image_angle) {
	case ANGLE.UP:
		y = collidingInstance.bbox_bottom + 1;
		break;
		
	case ANGLE.DOWN:
		y = collidingInstance.bbox_top - 1;
		break;
		
	case ANGLE.LEFT:
		x = collidingInstance.bbox_right + 1;
		break;
		
	case ANGLE.RIGHT:
		x = collidingInstance.bbox_left - 1;
		break;
}

// Inherit the parent event
event_inherited();

