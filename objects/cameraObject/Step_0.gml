/// @description Update camera position
x = lerp(x, follow.x, 0.1);
y = lerp(y, follow.y, 0.1);

if (shakeRemain > 0) {
	x += random_range(-shakeRemain, shakeRemain);
	y += random_range(-shakeRemain, shakeRemain);
	shakeRemain = max(0, shakeRemain - (1/shakeLength)*shakeMagnitude);
}

/*
// Update destination
if (instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
}

// Update object position
x += (xTo - x) * cameraSpeed;
y += (yTo - y) * cameraSpeed;

// Update camera position
camera_set_view_pos(mainCamera, x - widthHalf, y - heightHalf);
*/