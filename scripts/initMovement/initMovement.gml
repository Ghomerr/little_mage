// Init movement
hsp = move * spd;
// Add gravity only if lesser than jump
if (vsp < jump) {
	vsp += grv;
}