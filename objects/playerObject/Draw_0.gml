/// @description Draw self + debug
if (isVisible) {
	draw_self();
}

if (isDebugEnabled) {
	draw_set_alpha(0.5);
	draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,debugColor,debugColor,debugColor,debugColor,false);
	draw_set_alpha(1);
	
	if (isGrounded) {
		draw_set_color(c_red);	
	} else {
		draw_set_color(c_black);	
	}
	
	/*draw_set_font(signPostFont);
	draw_set_halign(fa_right);
	draw_text(x - 10, y - 16, string(hsp));
	draw_text(x - 10, y - 32, string(x));
	draw_set_halign(fa_left);
	draw_text(x + 10, y - 16, string(vsp));
	draw_text(x + 10, y - 32, string(y));*/
}