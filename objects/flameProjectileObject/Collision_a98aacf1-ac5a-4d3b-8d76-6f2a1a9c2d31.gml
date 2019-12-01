if (handleCollisionWith(other)) {
	with(other) {
		if (!isDying) {
			hp--;
			flash = hitDelay;
			hitfrom = other.direction
		}
	}
}