/// @desc Emit fire particles
/// @arg dirMin
/// @arg dirMax
/// @arg grvDir
/// @arg range
/// @arg partCount

part_type_direction(pm.fireball, argument0, argument1, 0, 0);
part_type_gravity(pm.fireball, 0.1, argument2);
part_particles_create(
	pm.ps, 
	x + irandom_range(-argument3, argument3), 
	y + irandom_range(-argument3, argument3), 
	pm.fireball,
	argument4
);