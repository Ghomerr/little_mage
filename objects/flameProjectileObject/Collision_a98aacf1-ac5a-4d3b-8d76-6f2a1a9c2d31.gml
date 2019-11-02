if (handleCollisionWith(buffshroomObject)) {
	with(other) {
		hp--;
		flash = hitDelay;
		hitfrom = other.direction
	}
}