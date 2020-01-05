if (room != menuRoom) {
	// Delete existing save file
	if (file_exists(SAVEFILE)) file_delete(SAVEFILE);

	// Create new save file
	var file = file_text_open_write(SAVEFILE);
	var savedData = (playerObject.hasWeapon ? WEAPON_OFFSET : 0) + room;
	file_text_write_real(file, savedData);
	file_text_close(file);
}