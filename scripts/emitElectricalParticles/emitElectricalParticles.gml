/// @arg min particles
/// @arg max particles
/// @arg range of particles
/// @arg minSpeed
/// @arg maxSpeed
function emitElectricalParticles(argument0, argument1, argument2, argument3, argument4) {

	// Emit electrical particles
	part_type_speed(pm.elec1, argument3, argument4, -0.1, 0);
	part_type_speed(pm.elec2, argument3, argument4, -0.1, 0);
	repeat (irandom_range(argument0, argument1)) {
		part_particles_create(pm.ps, x + irandom_range(-argument2, argument2), y + irandom_range(-argument2, argument2), choose(pm.elec1, pm.elec2), 1);
	}



}
