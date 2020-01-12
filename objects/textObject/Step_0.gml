/// @description Progress display of text
if (letters < length) {
	
	// Handle fast text display only if player is not already pressing
	var isPlayerActing = keyboard_check(vk_anykey)
	or mouse_check_button(mb_any)
	or gamepad_button_check(0, gp_face2)
	or gamepad_button_check(0, gp_face1);
	
	// If player press button, text speed x2
	var speedFactor = isPlayerActing ? 3 : 1;
	letters += DRAW_SPEED * speedFactor;
	currentText = string_copy(text, 1, floor(letters));

	// Compute bubble dimensions
	draw_set_font(signPostFont);
	if (textHeight == 0) {
		textHeight = string_height(text);
	}
	textWidth = string_width(currentText);

} else if (keyboard_check_pressed(vk_anykey) 
	or mouse_check_button_pressed(mb_any)
	or gamepad_button_check_pressed(0, gp_face2)
	or gamepad_button_check_pressed(0, gp_face1)
	or parent.isShowingText and !parent.isPlayerInRadius) {
	
	// Reset text showing state
	with(cameraObject) follow = playerObject;
	parent.isShowingText = false;
	
	// Destroy when done
	instance_destroy();
}