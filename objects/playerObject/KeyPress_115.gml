/// @description Toggle weapon
if (isDebugEnabled) {
	if (hasWeapon) {
		with(staffObject) {
			instance_destroy();	
		}
	} else {
		with(handsObject) {
			instance_destroy();	
		}
	}
	hasWeapon = !hasWeapon;
	createWeaponOrHands();
}
