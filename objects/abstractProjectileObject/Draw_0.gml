/// @description Debug
if (isActive) {
	draw_self();

	if (playerObject.isDebugEnabled) {
		draw_set_alpha(0.5);
		draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,debugColor,debugColor,debugColor,debugColor,false);
		draw_set_alpha(1);
	}
}