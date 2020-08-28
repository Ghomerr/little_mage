function changeStaffMagic() {
	with (staffObject) {
		image_index = playerObject.currentHat;
		projectile = PROJECTILES[playerObject.currentHat];
		secondary = SECONDARY_MAGICS[playerObject.currentHat];
	}


}
