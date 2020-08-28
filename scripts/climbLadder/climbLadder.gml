/// @desc make the player climb a ladder
function climbLadder() {
	isOnLadder = true;
	vsp = 0;
	hsp = 0;
	isJumping = false;
	isGrounded = false;
	ignorePlatform = true;
	var ladder = instance_place(x, y, ladderObject);
	x = ladder.x;


}
