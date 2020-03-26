/// @description Emit particles

// Inherit the parent event
event_inherited();

// Create rock particles behind projectile
if (choose(0, 0, 0, 0, 0, 1)) {
	var partDir = direction + ANGLE.OPPOSITE;
	part_type_direction(pm.rock, partDir - ANGLE.HALF_CORNER, partDir + ANGLE.HALF_CORNER, 0, 0);
	part_particles_create(pm.ps, x + irandom_range(-4, 4), y + irandom_range(-4, 4), pm.rock, 1);
}