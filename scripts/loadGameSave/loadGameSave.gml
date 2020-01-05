// If save file exists, load the previous room
if (file_exists(SAVEFILE)) {
	
	var file = file_text_open_read(SAVEFILE);
	var savedData = file_text_read_real(file);
	
	// Handle weapon save
	if (savedData >= WEAPON_OFFSET) {
		playerObject.hasWeapon = true;	
		savedData -= WEAPON_OFFSET;
	}
	
	var targetRoom = savedData;
	
	file_text_close(file);
	
	return targetRoom;
} else {
	// Otherwise, start a new game
	return nature1Room;
}
