/// @description Burst snow particles

// Inherit the parent event
event_inherited();

// Apply frozen effect to collided instance
frozenTimer = 180;
if (isShootableInstance) {
	with (collidingInstance) {
	
		// Remove burnt effect
		if (burntCounter > 0) {
			burntCounter = 0;
		} else {
			// Apply frozen only if not burnt
			frozenCounter = other.frozenTimer;	
		}
	}
}

burstSnowParticles(0.3, 5, 5, irandom_range(10, 20));