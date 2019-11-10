/// @description Draw transitions panes
if (mode != TRANS_MODE.OFF) {
	draw_set_color(c_black);
	// Top pane
	draw_rectangle(0, 0, T_WIDTH, T_HALF_HEIGHT * percent, false);
	// Bottom pane
	draw_rectangle(0, T_HEIGHT, T_WIDTH, T_HEIGHT - T_HALF_HEIGHT * percent, false);
}