/// @description Burst rock particles

// Inherit the parent event
event_inherited();

// Burst rock particles
emitStoneParticles(
	ANGLE.MIN, ANGLE.MAX,
	2, 5,
	6, irandom_range(10, 20)
);