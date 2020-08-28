/// @description Hit player
with(other) {
	if (isGrounded) {
		beHit(0);
		beHitInTheAir();
	}
}
