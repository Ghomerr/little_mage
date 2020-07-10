/// @desc Emit gravity particles
/// @arg minSpeed
/// @arg maxSpeed
/// @arg number
/// @arg rangeX
/// @arg rangeY

part_type_speed(pm.gravitySparkle, argument0, argument1, -0.1, 0);
repeat (argument2) {
	part_particles_create(
		pm.ps,
		x + irandom_range(-argument3, argument3),
		y + irandom_range(-argument4, argument4),
		pm.gravitySparkle,
		1
	);
}
