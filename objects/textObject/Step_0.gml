/// @description Progress display of text
if (letters < length) {
	letters += DRAW_SPEED;
	currentText = string_copy(text, 1, floor(letters));

	draw_set_font(signPostFont);
	if (textHeight == 0) {
		textHeight = string_height(text);
	}

	textWidth = string_width(currentText);
} else if (keyboard_check_pressed(vk_anykey) or gamepad_button_check_pressed(0, gp_face1)) {
	// Destroy when done
	with(cameraObject) {
		follow = playerObject;
	}
	instance_destroy();
}