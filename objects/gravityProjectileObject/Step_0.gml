/// @description Emit particles

event_inherited();

if (irandom_range(1, 5) == 5) {
	emitGravityParticles(0, 0, 1, 3, 3);
}