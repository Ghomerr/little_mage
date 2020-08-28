/// @desc restart the room or the game
/// @arg args of the command : restart <target>
function restartCommand(args) {

	if (argument_count == 1 and array_length(args) >= 1) {

		var restartArg = array_length(args) >= 1 ? args[1] : "";
		switch (restartArg) {
			case "game":
				commandResultColor = c_yellow;
				commandResult = "Restarting game";
				startTransition(TRANS_MODE.RESTART);
				break;
			
			default:
				commandResultColor = c_yellow;
				commandResult = "Restarting current room";
				startTransition(TRANS_MODE.GOTO, room);
				break;
		}
	
	} else {
		commandResultColor = c_red;
		commandResult = "Invalid restart arguments. Type help restart to see the usage.";
	}
}
