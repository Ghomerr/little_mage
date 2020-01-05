/// @description ?
if (instance_exists(playerObject)) {
	if (isPlayerInRadius and !isShowingText 
		and (mouse_check_button_pressed(mb_right) or gamepad_button_check_pressed(0, gp_face2)))
	{
		isShowingText = true;
		
		// Create a new text bubble
		with(instance_create_layer(x, y - PLAYER_RADIUS, "Cameras", textObject)) {
			text = other.text;
			length = string_length(text);
			parent = other;
		}
	
		// Focus camera on sign post
		with(cameraObject) {
			follow = other.id;
		}
	}
}