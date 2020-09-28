/// @desc Explode and disappear

emitWindDustParticles(
	ANGLE.MIN,
	ANGLE.MAX,
	false,
	spriteHalfWidth,
	spriteHalfHeight,
	x,
	y,
	irandom_range(10, 20),
	partColor
);

instance_destroy();