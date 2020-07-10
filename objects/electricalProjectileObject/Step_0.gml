/// @description Emit particles

// Inherit the parent event
event_inherited();

if (irandom_range(1, 10) == 1) {
	emitElectricalParticles(1, 1, 5, 0, 0);
}