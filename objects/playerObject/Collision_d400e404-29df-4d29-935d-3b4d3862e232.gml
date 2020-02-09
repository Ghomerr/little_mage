/// @description Hit by monster
if (!other.isDying) {
	beHit();
	beHitInTheAir(2, 2);
	isBeingHit = true;
}