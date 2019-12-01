if (handleCollisionWith(other)) {
	with(other) {
		hp--;
		flash = hitDelay;
		hitfrom = other.direction
	}
}