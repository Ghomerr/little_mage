// Init movement

var realMove = elecShockCounter > 0 ? 0 : move;

if (!isBeingHit and !isOnLadder) {
	hsp = realMove * (frozenCounter > 0 ? spd * global.frozenFactor : spd);
} 
// Add gravity only if lesser than jump
if (!isOnLadder) {
	updateVspWithGravity(vsp, jump);
} else {
	vsp = vMove;
}