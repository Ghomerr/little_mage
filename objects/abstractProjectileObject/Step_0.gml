/// @description Handle movement and collisions

// Handle falling or moving projectile only
if (isFalling or prjSpeed > 0) {
	
	// Turn the sprite
	if (STEP_ANGLE > 0) {
		if (isAimingRight) {
			image_angle = angleRound(image_angle - STEP_ANGLE);	
		} else {
			image_angle = angleRound(image_angle + STEP_ANGLE);	
		}
	}
	
	// Update projectile position
	//x += hsp;
	//y += vsp;
	
	// Apply gravity if needed
	if (GRV > 0 and vsp < MAX_FALL_SPEED) {
		vsp += GRV;
	}
	
	var nextX = x + hsp;
	var nextY = y + vsp;

	// If projectile is not falling (= can hit things)
	if (!isFalling) {
		// Check colliding entity
		var collidingInstance = handleCollisionWith(shootableObject, nextX, nextY);
		if (collidingInstance != noone) {
			event_user(EVENT.PROJECTILE_ENTITY_HIT); // notify projectile of hitting an instance
			with(collidingInstance) {
				if (!isDying) {
					beHit(other.damage);
				}
			}
			return;
		}
	}

	// Handle wall objects collision
	if (handleCollisionWith(wallObject, nextX, nextY) == noone) {
		// Update position if no collision
		x = nextX;
		y = nextY;
	} else {
		event_user(EVENT.PROJECTILE_WALL_HIT); // notify hitting a wall	
	}
}
