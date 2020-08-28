/// @desc burst snow particles
/// @arg speed
/// @arg rangeX
/// @arg rangeY
/// @arg count
function burstSnowParticles(argument0, argument1, argument2, argument3) {

	// Burst snow particles
	part_type_direction(pm.snow, ANGLE.MIN, ANGLE.MAX, 0, 0);
	part_type_speed(pm.snow, argument0, argument0, -0.02, 0);
	repeat(argument3) {
		part_particles_create(
			pm.ps, 
			x + irandom_range(-argument1, argument1),
			y + irandom_range(-argument2, argument2),
			pm.snow, 
			1
		);
	}


}
