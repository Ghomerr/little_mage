/// @description Emit particles

if (life > 0) {
	life--;	
	
	// Inherit the parent event
	event_inherited();
	
	// Emit death smoke
	var partDir = direction + ANGLE.OPPOSITE;
	var xDelta = lengthdir_x(2, partDir);
	var yDelta = lengthdir_y(2, partDir);

	repeat(irandom_range(1, 5)) {
		part_particles_create(pm.psUnderProj, x + irandom_range(-4, 4) + xDelta, y + irandom_range(-4, 4) + yDelta, pm.deathSmoke, 1);
	}
} else if (life == 0) {
	life--;
	instance_change(burstObject, true);
}

