// Init movement
if (!isBeingHit) {
	hsp = move * (frozenCounter > 0 ? spd * 0.3 : spd);
	//hsp = move * spd;
}
// Add gravity only if lesser than jump
if (vsp < jump) {
	vsp += grv;
}