with(instance_create_layer(0, 0, "Cameras", backgroundManager)) {
	// Init backgrounds ids
	backgroundsIds[0] = layer_get_id("Close");
	backgroundsIds[1] = layer_get_id("Mid");
	backgroundsIds[2] = layer_get_id("Far");
	
	// Init backgrounds speed
	backgroundsSpeeds[0] = 0.6;
	backgroundsSpeeds[1] = 0.3;
	backgroundsSpeeds[2] = 0.1;
}