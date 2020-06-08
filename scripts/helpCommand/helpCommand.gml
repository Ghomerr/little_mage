commandResultColor = c_yellow;

if (argument_count == 1) {
	if (array_length_1d(argument0) >= 2) {
	
		var command = argument0[1];
		switch (command) {
			case "debug":
				commandResult = "Show debug infos. Usage: debug [player|monsters|walls|fps]";
				break;
			
			case "give":
				commandResult = "Give things to the player. Usage: give [coins|hp|staff] (quantity)";
				break;
			
			case "quit":
				commandResult = "Quit the game. Usage: quit";
				break;
			
			case "restart":
				commandResult = "Restart the room by default or the game. Usage: restart (room|game)";
				break;
		
			case "room":
				commandResult = "Teleport to the given room name. Usage: room [roomName]";
				break;
			
			case "spawn":
				commandResult = "Spawn between 1 and 100 entities. Usage: spawn [apple|buffshroom|crate|squirrel] (quantity)";
				break;
			
			case "version":
				commandResult = "Display the current game version. Usage: version";
				break;
			
			default:
				commandResultColor = c_red;
				commandResult = "Unknown command: " + command;
		}
	} else {
		commandResult = "Available commands: debug, give, quit, restart, room, spawn, version";
	}
}