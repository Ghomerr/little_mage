/// @desc Go to the named room
/// @arg args

if (argument_count == 1 and array_length_1d(argument0) >= 1) {

	var roomName = argument0[1];
	var roomIndex = asset_get_index(roomName);
	if (roomIndex != -1) {
		commandResultColor = c_yellow;
		commandResult = "Going to room: " + roomName;
		startTransition(TRANS_MODE.GOTO, roomIndex);
		
	} else {
		commandResultColor = c_red;
		commandResult = "Unknown room: " + roomName;
	}
	
} else {
	commandResultColor = c_red;
	commandResult = "Invalid room arguments. Usage: room roomName";
}