/// @desc Emit gravity particles
/// @arg minSpeed
/// @arg maxSpeed
/// @arg number
/// @arg rangeX
/// @arg rangeY
function emitGravityParticles(minSpeed, maxSpeed, number, rangeX, rangeY) {
	part_type_speed(pm.gravitySparkle, minSpeed, maxSpeed, -0.1, 0);
	repeat (number) {
		part_particles_create(
			pm.ps,
			x + irandom_range(-rangeX, rangeX),
			y + irandom_range(-rangeY, rangeY),
			pm.gravitySparkle,
			1
		);
	}
}
