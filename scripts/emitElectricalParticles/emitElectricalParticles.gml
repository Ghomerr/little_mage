/// @arg min particles
/// @arg max particles
/// @arg range of particles

// Emit electrical particles
part_type_speed(pm.elec1, 0.25, 0.75, -0.5, 2);
part_type_speed(pm.elec2, 0.25, 0.75, -0.5, 2);
repeat (irandom_range(argument0, argument1)) {
	part_particles_create(pm.ps, x + irandom_range(-argument2, argument2), y + irandom_range(-argument2, argument2), choose(pm.elec1, pm.elec2), 1);
}

// Reset speed
part_type_speed(pm.elec1, 0, 0, 0, 0);
part_type_speed(pm.elec2, 0, 0, 0, 0);