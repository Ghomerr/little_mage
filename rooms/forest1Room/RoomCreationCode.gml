// Init position of player in this room
initPlayerPosition(48, 416);

initSimpleParallax([0.2, 0.1, 0.05]);

instance_create_layer(playerObject.x, playerObject.y, "Cameras", cameraObject);