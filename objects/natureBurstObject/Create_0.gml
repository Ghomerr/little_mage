/// @description Emit leaf particles

// Inherit the parent event
event_inherited();

if (hasCollidedLivingEntity) {
	with(collidingInstance) {
		isInfected = true;
	}
}

burstLeafParticles();