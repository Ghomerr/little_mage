/// @description Emit particles

if (life > 0) {
	life--;	
	
	// Inherit the parent event
	event_inherited();
	
	// Emit death smoke
	emitDeathParticles(direction + ANGLE.OPPOSITE, 2, 4, 5, true);
	
} else if (life == 0) {
	life--;
	instance_change(burstObject, true);
}

