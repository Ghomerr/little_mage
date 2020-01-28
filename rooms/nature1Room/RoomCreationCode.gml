// Init position of player in this room
initPlayerPosition(80, 432);

initSimpleParallax();

instance_create_layer(playerObject.x, playerObject.y, "Cameras", cameraObject);