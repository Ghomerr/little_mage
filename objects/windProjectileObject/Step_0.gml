/// @description Emit particles

// Inherit the parent event
event_inherited();

if (irandom_range(1, 5) == 1) {
	var partDir = direction + ANGLE.OPPOSITE;
	emitWindDustParticles(
		partDir - 15, partDir + 15,
		false,
		2, 2,
		x, y,
		1,
		c_white
	);
}