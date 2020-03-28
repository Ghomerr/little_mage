/// @description Emit electircal particles

// Inherit the parent event
event_inherited();

// Emit electrical particles
part_type_speed(pm.elec1, 0.25, 0.75, -0.5, 2);
part_type_speed(pm.elec2, 0.25, 0.75, -0.5, 2);
repeat (irandom_range(3, 6)) {
	part_particles_create(pm.ps, x + irandom_range(-5, 5), y + irandom_range(-5, 5), choose(pm.elec1, pm.elec2), 1);
}

// Reset speed
part_type_speed(pm.elec1, 0, 0, 0, 0);
part_type_speed(pm.elec2, 0, 0, 0, 0);