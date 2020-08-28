/// @desc Emit fire particles
/// @arg dirMin
/// @arg dirMax
/// @arg grvDir
/// @arg range
/// @arg partCount
function emitFireParticles(dirMin, dirMax, grvDir, range, partCount) {
	part_type_direction(pm.fireball, dirMin, dirMax, 0, 0);
	part_type_gravity(pm.fireball, 0.1, grvDir);
	part_particles_create(
		pm.ps, 
		x + irandom_range(-range, range), 
		y + irandom_range(-range, range), 
		pm.fireball,
		partCount
	);
}
