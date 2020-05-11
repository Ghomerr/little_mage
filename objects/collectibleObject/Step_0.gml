/// @description Float or fall with collisions
if (doWave) {
	y = ystart + sin(get_timer() / TIMER_FACTOR) * WAVE_MAX;
} else if (!isGrounded) {
	updateVspWithGravity(vsp, jump);
	handleHorizontalCollision(x + hsp);
	handleVerticalCollision(y + roundVsp(vsp));
	updatePosition();
}
