// Init position of player in this room
initPlayerPosition(48, 400);

initSimpleParallax();

instance_create_layer(playerObject.x, playerObject.y, "Cameras", cameraObject);