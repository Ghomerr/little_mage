/// @description ?
if (!isGrounded) {
	updateVspWithGravity(vsp, jump);
	handleHorizontalCollision(x + hsp);
	handleVerticalCollision(y + roundVsp(vsp));
	updatePosition();
}
