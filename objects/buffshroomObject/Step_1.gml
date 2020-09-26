/// @description Attacking player

// Inherit the parent event
event_inherited();

// Buffshroom is quicker when attacking
if (isAttacking) {
	spd = initSpd * attackSpd;
} else {
	spd = initSpd;
}

// Do the punch while attacking and at the 3rd frame index
if (isAttacking and image_index >= 3) {
	var playerOrientation = sign(playerObject.x - x);
	
	// Do punch using collision rectganle
	if (collision_rectangle(x, y, x + punchOffsetX * playerOrientation, y + punchOffsetY, playerObject, false, true)) {
		with (playerObject) monsterHitsPlayer();
	}
}

// Restore y scale
if (image_yscale < initScaleY) {
	image_yscale += growStep;
	if (image_yscale > initScaleY) {
		image_yscale = initScaleY;
	}
	if (place_meeting(x, y, wallObject)) {
		y--;
	}
}