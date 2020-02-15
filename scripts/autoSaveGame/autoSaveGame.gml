if (room != menuRoom) {
	// Delete existing save file
	if (file_exists(SAVEFILE)) file_delete(SAVEFILE);

	// Create new save file
	var file = file_text_open_write(SAVEFILE);
	file_text_write_real(file, room);
	file_text_write_real(file, playerObject.hasWeapon ? 1 : 0);
	file_text_write_real(file, global.kills);
	file_text_close(file);
}