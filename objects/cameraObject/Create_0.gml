/// @description Set up camera

// Target
follow = playerObject;
// Shake variables
shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;

/*
// Camera lerp mode
// Get camera configuration
mainCamera = view_camera[0];
width = camera_get_view_width(mainCamera);
height = camera_get_view_height(mainCamera);
widthHalf = width * 0.5;
heightHalf = height * 0.5;

// Create a new camera instance
mainCamera = camera_create_view(follow.x, follow.y, width, height, 0, self, -1, -1, widthHalf, heightHalf);
view_camera[0] = mainCamera;
//*/

//*
// Camera manual mode
// Init camera
mainCamera = view_camera[0];

// Camera constants
cameraSpeed = 0.08;
width = camera_get_view_width(mainCamera);
height = camera_get_view_height(mainCamera);
widthHalf = width * 0.5;
heightHalf = height * 0.5;
shakeBuffer = 16;
clampMinWidth = widthHalf + shakeBuffer;
clampMinHeight = heightHalf + shakeBuffer;
clampMaxWidth = room_width - widthHalf - shakeBuffer;
clampMaxHeight = room_height - heightHalf - shakeBuffer;


// Camera variables
xTo = xstart;
yTo = ystart;
//*/