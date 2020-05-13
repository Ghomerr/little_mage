/// @description Decrease counters
if (projectileCounter > 0) {
	projectileCounter--;
}

// Handle fronzen effect
if (frozenCounter > 0) {
	frozenCounter--;
	if (frozenCounter % 60 == 0) {
		// Burst snow particles
		part_type_direction(pm.snow, ANGLE.MIN, ANGLE.MAX, 0, 0);
		part_type_speed(pm.snow, 0.3, 0.3, -0.02, 0);
		repeat(irandom_range(5, 10)) {
			part_particles_create(
				pm.ps, 
				irandom_range(bbox_left, bbox_right), 
				irandom_range(bbox_top, bbox_bottom), 
				pm.snow, 1
			);
		}
		// Reset speed
		part_type_speed(pm.snow, 0.1, 0.25, -0.01, 0);
	}
}

// Handle fronzen effect
if (burntCounter > 0) {
	// Every second, be burnt a bit
	if (burntCounter % 60 == 0) {
		beHit(0.5);
		
		// Try to spread fire around
		tryToSpreadFire(SPREAD_SIZE, 0, SPREAD_ODD);
		tryToSpreadFire(-SPREAD_SIZE, 0, SPREAD_ODD);
		tryToSpreadFire(0, SPREAD_SIZE, SPREAD_ODD);
		tryToSpreadFire(0, -SPREAD_SIZE, SPREAD_ODD);
		
		// Emit burnt particles
		repeat(irandom_range(8, 16)) {
			emitFireParticles(
				ANGLE.UP,
				ANGLE.UP,
				ANGLE.UP,
				spriteHalfWidth,
				irandom_range(2, 4)
			);
		}
	}
	burntCounter--;
}

if (isInPillar and (!instance_exists(stoneBurstObject) or !place_meeting(x, y, stoneBurstObject))) {
	isInPillar = false;
}