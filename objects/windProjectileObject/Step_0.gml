/// @description Emit particles

// Inherit the parent event
event_inherited();

if (irandom_range(1, 5) == 1) {
	var partDir = direction + ANGLE.OPPOSITE;
	part_type_direction(pm.windDust, partDir - 15, partDir + 15, 0, 0);
	part_particles_create(pm.ps, x + irandom_range(-2, 2), y + irandom_range(-2, 2), pm.windDust, 1);
}