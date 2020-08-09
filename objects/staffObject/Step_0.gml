/// @desc Staff position and orientation
x = playerObject.x - playerObject.image_xscale;
y = playerObject.y + (playerObject.isCrouched ? playerObject.WEAPON_Y_OFFSET_CROUCHED : playerObject.WEAPON_Y_OFFSET);

// Staff orientation
if (isAimingRight) {
	image_yscale = 1;
	// Flip player too
	with (playerObject) {
		image_xscale = 1;
	}
} else {
	image_yscale = -1;
	// Flip player too
	with(playerObject) {
		if (!isOnLadder) {
			image_xscale = -1;
		} else {
			image_xscale = 1;	
		}
	}
}
