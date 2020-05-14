/// @arg partDir
/// @arg dirOffset
/// @arg range
/// @arg number
/// @arg random

var xDelta = argument0 and argument1 ? lengthdir_x(argument1, argument0) : 0;
var yDelta = argument0 and argument1 ? lengthdir_y(argument1, argument0) : 0;

repeat(argument4 ? irandom_range(1, argument3) : argument3) {
	part_particles_create(pm.psUnderProj, x + irandom_range(-argument2, argument2) + xDelta, y + irandom_range(-argument2, argument2) + yDelta, pm.deathSmoke, 1);
}