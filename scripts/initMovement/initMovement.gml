// Init movement
if (!isBeingHit) {
	hsp = move * (frozenCounter > 0 ? spd * global.frozenFactor : spd);
}
// Add gravity only if lesser than jump
updateVspWithGravity(vsp, jump);