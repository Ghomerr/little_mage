// Init position of player in this room
initPlayerPosition(96, 464);

initSimpleParallax();

instance_create_layer(playerObject.x, playerObject.y, "Cameras", cameraObject);