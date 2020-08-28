/// @desc Emit stone particles
/// @arg minDir
/// @arg maxDir
/// @arg minSpeed
/// @arg maxSpeed
/// @arg range
/// @arg number
function emitStoneParticles(minDir, maxDir, minSpeed, maxSpeed, range, number) {
	part_type_direction(pm.rock, minDir, maxDir, 0, 0);
	part_type_speed(pm.rock, minSpeed, maxSpeed, 0, 0);
	repeat(number) {
		part_particles_create(pm.ps, x + irandom_range(-range, range), y + irandom_range(-range, range), pm.rock, 1);
	}
}
