/// @description Destroy pickup staff if player has already a weapon
if (instance_exists(playerObject)) {
	if (playerObject.hasWeapon) {
		instance_destroy();
	}
}