/// @description Destroy ladder
instance_destroy(ladder);
if (nextLadder != noone) {
	instance_destroy(nextLadder);
}
if (totalHeight > 0) {
	burstLeafParticles();
}