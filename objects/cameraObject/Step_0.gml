/// @description Update camera position

/*
// Lerp mode
x = lerp(x, follow.x, 0.1);
y = lerp(y, follow.y, 0.1);

// Handle shake
if (shakeRemain > 0) {
	x += random_range(-shakeRemain, shakeRemain);
	y += random_range(-shakeRemain, shakeRemain);
	shakeRemain = max(0, shakeRemain - (1/shakeLength)*shakeMagnitude);
}
//*/

//*
// Manual mode
// Update destination
if (instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
}

// Update object position
x += (xTo - x) * cameraSpeed;
y += (yTo - y) * cameraSpeed;

x = clamp(x, clampMinWidth, clampMaxWidth);
y = clamp(y, clampMinHeight, clampMaxHeight);

// Handle shake
if (shakeRemain > 0) {
	x += random_range(-shakeRemain, shakeRemain);
	y += random_range(-shakeRemain, shakeRemain);
	shakeRemain = max(0, shakeRemain - (1/shakeLength)*shakeMagnitude);
}

// Update camera position
camera_set_view_pos(mainCamera, x - widthHalf, y - heightHalf);
//*/