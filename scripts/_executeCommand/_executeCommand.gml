/// @desc Run the given command string
/// @author http://kishimotostudios.com/articles/input_text_gms/
/// @arg command text
function _executeCommand(args) {

	if (string_length(args) > 0) {
		var argsArray = split(args, " ");

		// Validate command arguments
		if (array_length(argsArray) > 0 and string_length(argsArray[0]) > 0) {
	
			// Search the command script
			var scriptIndex = asset_get_index(string_lower(argsArray[0]) + "Command");
			if (script_exists(scriptIndex)) {
				// Execute the given commands using arguments
		        script_execute(scriptIndex, argsArray);
			}  else {
				commandResultColor = c_red;
		        commandResult = "Unknown command: " + args;
			}
	
		} else {
			commandResultColor = c_red;
			commandResult = "Invalid command: " + args;
		}
	} else {
		commandResult = "";
	}


}
