/// @desc Run the given command string
/// @author http://kishimotostudios.com/articles/input_text_gms/
/// @arg command text

if (string_length(argument0) > 0) {
	var args = split(argument0, " ");

	// Validate command arguments
	if (array_length_1d(args) > 0 and string_length(args[0]) > 0) {
	
		// Search the command script
		var scriptIndex = asset_get_index(string_lower(args[0]) + "Command");
		if (script_exists(scriptIndex)) {
			// Execute the given commands using arguments
	        script_execute(scriptIndex, args);
		}  else {
			commandResultColor = c_red;
	        commandResult = "Unknown command: " + argument0;
		}
	
	} else {
		commandResultColor = c_red;
		commandResult = "Invalid command: " + argument0;	
	}
} else {
	commandResult = "";
}