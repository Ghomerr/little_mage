/// @description Emit particles

// Test particles

event_inherited();

// Create leaf particles behind projectile
if (irandom_range(1, 10) == 5) {
	var partDir = direction + ANGLE.OPPOSITE;
	var leafPart = choose(0, 1) ? pm.leafLeft : pm.leafRight;
	// Reset speed 
	//part_type_speed(leafPart, 1, 1, -0.05, 0);
	part_type_direction(leafPart, partDir - ANGLE.HALF_CORNER, partDir + ANGLE.HALF_CORNER, 0, 0);
	part_particles_create(pm.ps, x + irandom_range(-3, 3), y + irandom_range(-3, 3), leafPart, 1);
}