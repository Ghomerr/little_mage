/// @description Turn upside down if needed

if (!isInit) {
	isInit = true;
	// Turn projectile upside down is aiming left
	if (!isAimingRight) {
		image_yscale *= -1;	
	}
}

hspVal = cos(life / 4) * vspRatio;
vspVal = sin(life / 4) * hspRatio;
hsp += hspVal;
vsp += vspVal;