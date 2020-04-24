/// @description Decrease counters
if (projectileCounter > 0) {
	projectileCounter--;
}
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