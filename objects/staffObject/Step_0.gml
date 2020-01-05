// Staff position
x = playerObject.x - playerObject.image_xscale;
y = playerObject.y + playerObject.WEAPON_Y_OFFSET;

// Staff orientation
if (image_angle > 90 and image_angle < 270) {
	image_yscale = -1;
	// Flip player too
	with(playerObject) {
		image_xscale = -1;
	}
} else {
	image_yscale = 1;
	// Flip player too
	with (playerObject) {
		image_xscale = 1;
	}
}