/// @description Handle debug dialog inputs
if (isDebugFpsEnabled) {
	if (keyboard_check_pressed(vk_add)) {
		setGameSpeed(5);
		keyboard_lastkey = -1;
	} else if (keyboard_check_pressed(vk_subtract)) {
		setGameSpeed(-5);	
		keyboard_lastkey = -1;
	}
}

if (isDebugOpen) {
	
	// Handle history inputs up/down
	var nextCmdOffset = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	if (nextCmdOffset != 0) {
		if (cmdCount > 0) {
			// If no history command is displayed
			if (prevCmdCursor < 0) {
				// If nextCommand, add +1 to the last command
				if (nextCmdOffset == 1) {
					prevCmdCursor = lastCmd + 1;
				} else {
					// Otherwise show the last command typed
					prevCmdCursor = lastCmd;
				}
			} else {
				// Show next/previous command in history
				prevCmdCursor += nextCmdOffset;
			}
			// Handle out of bound indexes
			if (prevCmdCursor < 0) {
				prevCmdCursor = cmdCount - 1;
			} else if (prevCmdCursor >= cmdCount) {
				prevCmdCursor = 0;
			}
			// Get the previous command in history
			debugText = previousCommands[prevCmdCursor];
		}
	}
	
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
				if (string_length(debugText) > 0) {
					_executeCommand(debugText);
				
					// Command history update
					lastCmd++;
					if (cmdCount < PREV_CMD_MAX) {
						cmdCount++;
					} else {
						if (lastCmd >= cmdCount) {
							lastCmd = 0;
						}
					}
					previousCommands[lastCmd] = debugText;
					prevCmdCursor = -1;
				
					// Reset current debug text
					debugText = "";
				}
				break;
				
			// Add a space to the debug text
			case vk_space:
			case vk_subtract:
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