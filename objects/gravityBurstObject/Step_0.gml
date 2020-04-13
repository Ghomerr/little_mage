/// @description Decrease life and handle target movement
if (life > 0) {
	
	if (instance_exists(collidingInstance)) {
		life--;	
		
		// If living entity, move it
		if (hasCollidedLivingEntity) {
			with (collidingInstance) {
				hsp = playerObject.hsp;
			}
		}
		
		// Hit target every seconds
		if (life % 60 == 0) {
			with (collidingInstance) {
				beHit(1);
			}
		}
	} else {
		instance_destroy();
	}
	
} else {
	with (collidingInstance) {
		inGravityBubble = false;
	}
	instance_destroy();
}
