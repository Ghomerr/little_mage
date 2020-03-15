/// @description Rotate the sprite 

image_angle = collidingAngle;

// Pixel perfect correction 
switch (image_angle) {
	case ANGLE.UP:
		y += collidingInstance.bbox_top - (bbox_bottom + 1);
		break;
		
	case ANGLE.DOWN:
		y += collidingInstance.bbox_bottom - (bbox_top + 1);
		break;
		
	case ANGLE.LEFT:
		x += collidingInstance.bbox_left - (bbox_right + 1);
		break;
		
	case ANGLE.RIGHT:
		x += collidingInstance.bbox_right - (bbox_left + 1);
		break;
}

// Inherit the parent event
event_inherited();

