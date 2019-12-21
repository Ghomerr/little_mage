/// @description Trigged when right click is used anywhere

if (instance_exists(playerObject) 
	and point_in_circle(playerObject.x, playerObject.y, x, y, 64)
	and !instance_exists(textObject)) {
	
	// Create a new text bubble
	with(instance_create_layer(x, y - 64, layer, textObject)) {
		text = other.text;
		length = string_length(text);
	}
	
	// Focus camera on sign post
	with(cameraObject) {
		follow = other.id;	
	}
}
