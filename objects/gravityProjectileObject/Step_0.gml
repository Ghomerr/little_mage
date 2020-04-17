/// @description Emit particles

// Inherit the parent event
event_inherited();

// Create leaf particles behind projectile
// Reset speed 
part_type_speed(pm.gravitySparkle, 0, 0, 0, 0);
if (irandom_range(1, 5) == 5) {
	part_particles_create(pm.ps, x + irandom_range(-3, 3), y + irandom_range(-3, 3), pm.gravitySparkle, 1);
}