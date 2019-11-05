/// @description Update camera position
x = lerp(x, follow.x, 0.1);
y = lerp(y, follow.y, 0.1);

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