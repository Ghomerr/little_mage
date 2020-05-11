/// @description Create particle

// Inherit the parent event
event_inherited();

// Create fire particles
var partDir = image_angle + ANGLE.OPPOSITE;
emitFireParticles(
	partDir - ANGLE.HALF_CORNER,
	partDir + ANGLE.HALF_CORNER,
	partDir,
	3,
	irandom_range(4, 8)
);