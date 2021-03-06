/// @description Move ice projectile

// Inherit the parent event
event_inherited();

// Create ice particles behind the projectile
if (choose(0, 1)) {
	var partDir = direction + ANGLE.OPPOSITE;
	var partX = lengthdir_x(3, partDir);
	var partY = lengthdir_y(3, partDir);
	part_type_speed(pm.snow, 0.1, 0.25, -0.01, 0);
	part_type_direction(pm.snow, partDir, partDir, 0, 0);
	part_particles_create(pm.ps, x + partX + irandom_range(-3, 3), y + partY + irandom_range(-3, 3), pm.snow, 1);
}