/// @description Hit monsters
with (other) {
	if (isGrounded) {
		beHit(other.damage);
		beHitInTheAir(10, 10);
	}
}
