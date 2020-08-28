/// @arg partMin particles
/// @arg partMax particles
/// @arg range of particles
/// @arg minSpeed
/// @arg maxSpeed
function emitElectricalParticles(partMin, partMax, range, minSpeed, maxSpeed) {

	// Emit electrical particles
	part_type_speed(pm.elec1, minSpeed, maxSpeed, -0.1, 0);
	part_type_speed(pm.elec2, minSpeed, maxSpeed, -0.1, 0);
	repeat (irandom_range(partMin, partMax)) {
		part_particles_create(pm.ps, x + irandom_range(-range, range), y + irandom_range(-range, range), choose(pm.elec1, pm.elec2), 1);
	}
}
