/// @desc Debug the game
/// @arg args of the command : debug <target>
function debugCommand(args) {

	if (argument_count == 1 and array_length(args) >= 2) {

		var debugArg = args[1];
		switch (debugArg) {
			case "player":
				if (instance_exists(playerObject)) {
					playerObject.isDebugEnabled = !playerObject.isDebugEnabled;
					commandResultColor = c_yellow;
					commandResult = "Debug Player " + (playerObject.isDebugEnabled ? "ON" : "OFF");
				} else {
					commandResultColor = c_red;
					commandResult = "No Player found";
				}
				break;
			
			case "monsters":
				if (instance_exists(abstractMonster)) {
					abstractMonster.isDebugEnabled = !abstractMonster.isDebugEnabled;
					commandResultColor = c_yellow;
					commandResult = "Debug Monsters " + (abstractMonster.isDebugEnabled ? "ON" : "OFF");
				}
				break;
			
			case "walls":
				if (instance_exists(wallObject)) {
					wallObject.visible = !wallObject.visible;
					if (instance_exists(ladderObject)) {
						ladderObject.visible = wallObject.visible;
					}
				}
				commandResultColor = c_yellow;
				commandResult = "Debug Walls " + (wallObject.visible ? "ON" : "OFF");
				break;
			
			case "fps":
				isDebugFpsEnabled = !isDebugFpsEnabled;
				if (isDebugFpsEnabled) {
					game_set_speed(debugFps, gamespeed_fps);
				} else {
					game_set_speed(GAME_SPEED, gamespeed_fps);
				}
				commandResultColor = c_yellow;
				commandResult = "Debug FPS " + (isDebugFpsEnabled ? "ON" : "OFF");
				break;
			
			default:
				commandResultColor = c_red;
				commandResult = "Unknown debug argument: " + debugArg + ". Type help debug to see the usage.";
				break;
		}
	
	} else {
		commandResultColor = c_red;
		commandResult = "Invalid debug arguments. Type help debug to see the usage.";
	}


}
