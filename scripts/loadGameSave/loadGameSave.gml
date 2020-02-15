// If save file exists, load the previous room
if (file_exists(SAVEFILE)) {
	
	var file = file_text_open_read(SAVEFILE);
	var targetRoom = file_text_read_real(file);
	playerObject.hasWeapon = file_text_read_real(file) == 1;
	global.kills = file_text_read_real(file);
	afterUpdateKillsCounter();
	global.coins = file_text_read_real(file);
	afterUpdateCoinsCounter();
	file_text_close(file);
	
	return targetRoom;
} else {
	// Otherwise, start a new game
	return nature1Room;
}
