/// @description Hit by monster
// Dont check collision on dying nor if the monsters is dying
// Avoid being hit while invulnerable
if (!isDying and !other.isDying and !other.inGravityBubble and other.damage > 0 and invulCounter == 0) {
	beHit(other.damage);
	beHitInTheAir(3, 4);
	isBeingHit = true;
	with(gameManager) heartSpriteScale = 2;
	invulCounter = INVUL_TIMER;
}