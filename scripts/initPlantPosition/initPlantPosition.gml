function initPlantPosition() {
	// Init plant position and angle

	// Move the plant on the bbox according to the colliding angle
	switch (collidingAngle) {
		case ANGLE.RIGHT:
			x = collidingInstance.bbox_right + 1;
			if (!place_meeting(x - 1, y, collidingInstance)) {
				instance_destroy();
			}
			break;
			
		case ANGLE.UP:
			y = collidingInstance.bbox_top;
			if (!place_meeting(x, y + 1, collidingInstance)) {
				instance_destroy();
			}
			break;
			
		case ANGLE.LEFT:
			x = collidingInstance.bbox_left;
			if (!place_meeting(x + 1, y, collidingInstance)) {
				instance_destroy();
			}
			break;
			
		case ANGLE.DOWN:
			y = collidingInstance.bbox_bottom + 1;
			if (!place_meeting(x, y - 1, collidingInstance)) {
				instance_destroy();
			}
			break;
	}

	// If the plant should follow its source
	if (isShootableInstance) {
		image_angle = angleRound(projectileAngle + ANGLE.OPPOSITE);
		posXOffset = x - collidingInstance.x;
		posYOffset = y - collidingInstance.y;
	
	} else {
		image_angle = collidingAngle;
	}
}
