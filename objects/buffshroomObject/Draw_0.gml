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
}