/// @description Handle debug dialog inputs
if (isDebugOpen) {
	
	// if a key has been typed
	if (keyboard_lastkey != -1 and string_length(keyboard_lastchar) > 0) {
				
		// Key is alphanumerical
		switch (keyboard_lastkey) {
			// Delete last character
			case vk_backspace:
				debugText = string_delete(debugText, string_length(debugText), 1);
				break;
				
			// Send command
			case vk_enter:
				//show_debug_message("Do command : " + debugText);
				executeCommand(debugText);
				debugText = "";
				break;
				
			// Add a space to the debug text
			case vk_space:
				debugText += keyboard_lastchar;
				break;
				
			// Add a character to the debug text
			default:
				var cleanKey = string_lettersdigits(keyboard_lastchar);
				if (string_length(cleanKey) > 0) {
					debugText += keyboard_lastchar;
				}
		}
		keyboard_lastchar = "";
		keyboard_lastkey = -1;
	}
}