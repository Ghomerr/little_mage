/// @description Emit particles

// Inherit the parent event
event_inherited();

if (irandom_range(1, 10) == 1) {
	part_particles_create(pm.ps, x + irandom_range(-5, 5), y + irandom_range(-5, 5), choose(pm.elec1, pm.elec2), 1);
}