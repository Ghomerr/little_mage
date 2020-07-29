/// @description Attacking player

// Inherit the parent event
event_inherited();

// Do the punch while attacking and at the 3rd frame index
if (isAttacking and image_index >= 3) {
	var playerOrientation = sign(playerObject.x - x);
	
	// Do punch using collision rectganle
	if (collision_rectangle(x, y, x + punchOffsetX * playerOrientation, y + punchOffsetY, playerObject, false, true)) {
		with (playerObject) monsterHitsPlayer();
	}
}