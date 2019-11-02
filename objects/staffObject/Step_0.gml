// Staff position
x = playerObject.x - playerObject.image_xscale;
y = playerObject.y + 8;

// Staff orientation
image_angle = point_direction(x, y, mouse_x, mouse_y);
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