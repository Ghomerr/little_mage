/// @description Set up camera

follow = playerObject;

// Get camera configuration
mainCamera = view_camera[0];
width = camera_get_view_width(mainCamera);
height = camera_get_view_height(mainCamera);
widthHalf = width * 0.5;
heightHalf = height * 0.5;

// Shake variables
shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;

// Create a new camera instance
mainCamera = camera_create_view(follow.x, follow.y, width, height, 0, self, -1, -1, widthHalf, heightHalf);
view_camera[0] = mainCamera;

/*
// Init camera
mainCamera = view_camera[0];
follow = playerObject;

// Camera constants
cameraSpeed = 0.04;
width = camera_get_view_width(mainCamera);
height = camera_get_view_height(mainCamera);
widthHalf = width * 0.5;
heightHalf = height * 0.5;

// Camera variables
xTo = xstart;
yTo = ystart;
*/