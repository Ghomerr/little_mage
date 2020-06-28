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

// Burst snow particles
part_type_direction(pm.snow, ANGLE.MIN, ANGLE.MAX, 0, 0);
part_type_speed(pm.snow, 0.3, 0.3, -0.02, 0);
part_particles_create(pm.ps, x + irandom_range(-5, 5), y + irandom_range(-5, 5), pm.snow, irandom_range(10, 20));
// Reset speed
part_type_speed(pm.snow, 0.1, 0.25, -0.01, 0);