/// @description Hit by monster
// Dont check collision on dying nor if the monsters is dying
// Avoid being hit while invulnerable
if (canBeHit and !isDying and !other.isDying and !other.inGravityBubble and other.damage > 0 and invulCounter == 0) {
	beHit(other.damage);
	beHitInTheAir(3, 4);
	isBeingHit = true;
	invulCounter = INVUL_TIMER;
}