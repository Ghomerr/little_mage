/// @description Pickup staff
with(instance_create_layer(playerObject.x, playerObject.y, playerObject.layer, staffObject)) {
	depth = playerObject.depth - 1; // get in front of player	
}

playerObject.hasWeapon = true;

// Save game when staff is taken
autoSaveGame();

event_inherited();