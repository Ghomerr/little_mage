function burstLeafParticles() {
	// Burst leaf particles
	part_type_direction(pm.leafLeft, ANGLE.MIN, ANGLE.MAX, 0, 0);
	part_type_speed(pm.leafLeft, 1, 2, -0.05, 0);
	part_type_direction(pm.leafRight, ANGLE.MIN, ANGLE.MAX, 0, 0);
	part_type_speed(pm.leafRight, 1, 2, -0.05, 0);

	repeat (irandom_range(5, 10)) {
		part_particles_create(pm.ps, x + irandom_range(-4, 4), y + irandom_range(-4, 4), choose(pm.leafLeft, pm.leafRight), 1);
	}
}
