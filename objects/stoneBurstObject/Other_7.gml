/// @description Stop animation
image_speed = 0;
image_index = image_number - 1;

// Create a stone pillard
with(instance_create_layer(x, y, layer, stonePillarObject)) {
	
	image_angle = other.image_angle;
	
	with (wall) {
		depth = other.depth - 1;
		
		if (other.image_angle == ANGLE.UP or other.image_angle == ANGLE.DOWN) {
			image_xscale = 10 / sprite_width;
			image_yscale = 24 / sprite_height;
		} else {
			image_xscale = sprite_width / 22;
			image_yscale = 6 / sprite_height;
		}
	
		switch (other.image_angle) {
			case ANGLE.UP:
				y -= 8;
				break;
			case ANGLE.LEFT:
				x -= 8;
				break;
			case ANGLE.DOWN:
				y += 8;
				break;
			case ANGLE.RIGHT:
				x += 8;
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

instance_destroy();