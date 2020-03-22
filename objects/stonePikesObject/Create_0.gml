/// @description Burst rock particles

// Inherit the parent event
event_inherited();

// Burst rock particles
part_type_direction(pm.rock, ANGLE.MIN, ANGLE.MAX, 0, 0);
part_type_speed(pm.rock, 2, 5, 0, 0);
part_particles_create(pm.ps, x + irandom_range(-6, 6), y + irandom_range(-6, 6), pm.rock, irandom_range(10, 20));
// Reset speed 
part_type_speed(pm.rock, 0.75, 2, 0, 0);