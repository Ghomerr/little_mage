function monsterHitsPlayer() {
	// Dont check collision on dying nor if the monsters is dying
	// Avoid being hit while invulnerable
	if (canBeHitBy(other)) {
		beHit(other.damage);
		beHitInTheAir(3, 4);
		isBeingHit = true;
		invulCounter = INVUL_TIMER;
	}
}
