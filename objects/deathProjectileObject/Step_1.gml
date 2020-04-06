/// @description Turn upside down if needed
if (!isInit) {
	isInit = true;
	// Turn projectile upside down is aiming left
	if (!isAimingRight) {
		image_yscale *= -1;	
	}
}