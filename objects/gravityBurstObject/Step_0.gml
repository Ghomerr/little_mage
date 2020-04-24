/// @description Decrease life and handle target movement
if (!isDone) {
	if (life > 0) {
		if (instance_exists(collidingInstance)) {
			life--;	
		
			// If living entity, move it
			if (hasCollidedLivingEntity) {
				with (collidingInstance) {
					if (!isDying) {
						if (playerObject.currentHat == HATS.GRAVITY) {
							// Handle bubble hsp
							if (isBetweenAngles(staffObject.image_angle, ANGLE.RIGHT - 15, ANGLE.RIGHT + 15)) {
								hsp = playerObject.spd;
							} else if (isBetweenAngles(staffObject.image_angle, ANGLE.LEFT - 15, ANGLE.LEFT + 15)) {
								hsp = -playerObject.spd;
							} else {
								hsp = playerObject.hsp;
							}
						
							// Handle bubble vsp
							if (isBetweenAngles(staffObject.image_angle, ANGLE.UP - 15, ANGLE.UP + 15)) {
								vsp = -playerObject.spd;
							} else if (isBetweenAngles(staffObject.image_angle, ANGLE.DOWN - 15, ANGLE.DOWN + 15)) {
								vsp = playerObject.spd;
							} else {
								vsp = playerObject.vsp;
							}
						
							if (hsp != 0 or vsp != 0) {
								// Emit particles
								if (irandom_range(1, 5) == 5) {
									part_particles_create(pm.ps, 
										x + irandom_range(-other.spriteHalfWidth, other.spriteHalfWidth), 
										y + irandom_range(-other.spriteHalfHeight, other.spriteHalfHeight), 
										pm.gravitySparkle, 1);
								}	
							}
						} else {
							hsp = 0;
							vsp = 0;
						}
					}
				}
			}
		
			// Hit target every seconds
			if (life % 60 == 0) {
				with (collidingInstance) {
					beHit(0.5);
				}
			}
		} else {
			life = 0;
		}
	
	} else {
		isDone = true;
		with (collidingInstance) {
			createGravityBubbleBurst();
		}
	}
}