/// @desc burst snow particles
/// @arg spd
/// @arg rangeX
/// @arg rangeY
/// @arg count
function burstSnowParticles(spd, rangeX, rangeY, count) {
	// Burst snow particles
	part_type_direction(pm.snow, ANGLE.MIN, ANGLE.MAX, 0, 0);
	part_type_speed(pm.snow, spd, spd, -0.02, 0);
	repeat(count) {
		part_particles_create(
			pm.ps, 
			x + irandom_range(-rangeX, rangeX),
			y + irandom_range(-rangeY, rangeY),
			pm.snow, 
			1
		);
	}
}
