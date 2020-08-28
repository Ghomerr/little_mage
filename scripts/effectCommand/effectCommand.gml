/// @desc Apply the given effect to the player
/// @arg args of the command : effect <effect> <duration>
function effectCommand(argument0) {

	if (argument_count == 1 and array_length_1d(argument0) >= 2) {
	
		var effectName = argument0[1];
	
		var qtyArray = getCommandQuantity(argument0);
		var quantity = max(1, min(qtyArray[0], 3600)) * game_get_speed(gamespeed_fps);
	
		if (!instance_exists(playerObject)) {
			commandResultColor = c_red;
			commandResult = "Player not found !";
			return;
		}
	
		switch (effectName) {
			case "burnt":
			case "fire":
				playerObject.burntCounter = quantity;
				break;
			
			case "frozen":
			case "ice":
				playerObject.frozenCounter = quantity;
				break;
			
			case "shocked":
			case "electric":
				playerObject.elecShockCounter = quantity;
				break;
			
			default:
				commandResultColor = c_red;
				commandResult = "Unknown effect: " + effectName;
		}
	
	} else {
		commandResultColor = c_red;
		commandResult = "Invalid effect arguments. Type help effect to see the usage.";
	}


}
