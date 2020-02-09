/// @description Draw self + debug
if (isVisible) {
	event_inherited();
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
	
	/*
	draw_set_font(signPostFont);
	draw_set_halign(fa_middle);
	draw_text(x, y - 32, string(hitfrom));
	draw_line(x, y, x + lengthdir_x(4, hitfrom), y + lengthdir_y(4, hitfrom));
	*/
}