function resetPlayerAfterDeath() {
	isDying = false;
	isBeingHit = false;
	hp = initHp;
	deathHearts = 0;
	deathHeartsCounter = 0;
	burntCounter = 0;
	frozenCounter = 0;
	projectileCounter = 0;
	isInPillar = false;
	hsp = 0;
	vsp = 0;
	move = 0;
	invulShaderTransparent = false;
	showHatsWheel = false;


}
