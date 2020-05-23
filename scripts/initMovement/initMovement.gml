// Init movement

var realMove = elecShockCounter > 0 ? 0 : move;

if (!isBeingHit) {
	hsp = realMove * (frozenCounter > 0 ? spd * global.frozenFactor : spd);
} 
// Add gravity only if lesser than jump
updateVspWithGravity(vsp, jump);