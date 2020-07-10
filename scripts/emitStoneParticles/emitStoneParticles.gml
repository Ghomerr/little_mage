/// @desc Emit stone particles
/// @arg minDirection
/// @arg maxDirection
/// @arg minSpeed
/// @arg maxSpeed
/// @arg range
/// @arg number

part_type_direction(pm.rock, argument0, argument1, 0, 0);
part_type_speed(pm.rock, argument2, argument3, 0, 0);
repeat(argument5) {
	part_particles_create(pm.ps, x + irandom_range(-argument4, argument4), y + irandom_range(-argument4, argument4), pm.rock, 1);
}