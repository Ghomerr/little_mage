/// @desc Create a stone pillard
with(instance_create_layer(x, y, layer, stonePillarObject)) {
	
	// Get the angle from the pillar source
	image_angle = other.image_angle;
	
	with (wall) {
		//depth = other.depth - 1; // DEBUG
		
		// Scale the wall regarding to the pillar dimensions and rotate it accordingly
		image_xscale = other.wallXScale;
		image_yscale = other.wallYScale;
		image_angle = other.image_angle;
		
		// Handle wall offset
		switch (image_angle) {
			case ANGLE.UP:
				y -= other.posOffset;
				break;
			case ANGLE.DOWN:
				y += other.posOffset;
				break;	
			case ANGLE.LEFT:
				x -= other.posOffset;
				break;
			case ANGLE.RIGHT:
				x += other.posOffset;
				break;
		}
	}
	
	// If the new pillar collide another one
	if (place_meeting(x, y, stonePillarObject)) {
		// Destroy it
		with(instance_place(x, y, stonePillarObject)) {
			beHit(initHp);	
		}
	}
}