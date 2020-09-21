/// @description Draw attack

// Inherit the parent event
event_inherited();

if (isDebugEnabled) {
	if (isAttacking) {
		var playerOrientation = sign(playerObject.x - x);	
		draw_set_alpha(0.5);
		draw_set_color(c_purple);
		draw_rectangle(x, y, x + punchOffsetX * playerOrientation, y + punchOffsetY, false);
		draw_set_alpha(1);
	}
	// Line of sight
	draw_set_alpha(0.5);
	draw_set_color(isTargetInRange ? c_red : c_green);
	draw_rectangle(x, y-1, x + sign(hsp) * shootingRange, y-1, false);
	draw_set_alpha(1);
}