/// @description Create particle

// Inherit the parent event
event_inherited();

// Create fire particles
var partDir = image_angle + ANGLE.OPPOSITE;
part_type_direction(pm.fireball, partDir - ANGLE.HALF_CORNER, partDir + ANGLE.HALF_CORNER, 0, 0);
part_type_gravity(pm.fireball, 0.1, partDir);
part_particles_create(pm.ps, x + irandom_range(-3, 3), y + irandom_range(-3, 3), pm.fireball, irandom_range(4, 8));