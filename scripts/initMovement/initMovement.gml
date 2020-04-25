// Init movement
if (!isBeingHit) {
	hsp = move * (frozenCounter > 0 ? spd * global.frozenFactor : spd);
}
// Add gravity only if lesser than jump
if (vsp < jump) {
	vsp += grv;
}