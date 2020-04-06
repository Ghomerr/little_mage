/// @description Emit particles

// Inherit the parent event
event_inherited();

part_type_speed(pm.deathSmoke, 0.5, 1, -0.1, 0);
part_particles_create(pm.psUnderProj, x + irandom_range(-3, 3), y + irandom_range(-3, 3), pm.deathSmoke, irandom_range(10, 20));
part_type_speed(pm.deathSmoke, 0, 0, 0, 0);