/// @description Emit particles

// Inherit the parent event
event_inherited();

// Create rock particles behind projectile
if (choose(0, 0, 0, 0, 0, 1)) {
	var partDir = direction + ANGLE.OPPOSITE;
	emitStoneParticles(
		partDir - ANGLE.HALF_CORNER, partDir + ANGLE.HALF_CORNER,
		0.75, 2,
		4, 1
	);
}