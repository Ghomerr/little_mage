/// @desc restart the room or the game
/// @arg args of the command

if (argument_count == 1 and array_length_1d(argument0) >= 1) {

	var restartArg = array_length_1d(argument0) >= 1 ? argument0[1] : "";
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
	commandResult = "Invalid restart arguments. Usage: restart (room|game)";
}