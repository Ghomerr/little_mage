/// @description Draw self + debug
if (isVisible) {
	draw_self();
}

if (isDebugEnabled) {
	draw_set_alpha(0.5);
	draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,c_red,c_red,c_red,c_red,false);
	draw_set_alpha(1);
	
	//draw_text(x, y - 20, string(depth));
}