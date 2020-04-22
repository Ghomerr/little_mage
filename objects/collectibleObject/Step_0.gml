/// @description Float or fall with collisions
if (doWave) {
	y = ystart + sin(get_timer() / TIMER_FACTOR) * WAVE_MAX;
} else if (!isGrounded) {
	if (vsp < jump) {
		vsp += grv;
	}
	handleHorizontalCollision(x + hsp);
	handleVerticalCollision(y + roundVsp(vsp));
	updatePosition();
}
