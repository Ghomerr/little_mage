/// @description Draw shader and self
draw_self();

// If flash is positive
if (flash > 0) {
	// Decrement
	flash--;
	// Apply hit shader
	shader_set(hitShader);
	draw_self();
	shader_reset();
}

if (isDebugEnabled) {
	// Draw collision box
	draw_set_alpha(0.5);
	draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,debugColor,debugColor,debugColor,debugColor,false);
	draw_set_alpha(1);
	
	// Draw spriteWidth inside the collision box
	//draw_set_color(c_black);
	//var testValue = sign(hsp) * spriteWidth / 2;
	//draw_line(x - testValue, y, x + testValue, y);
	
	// Draw spriteWidth and spriteHeight values
	//drawSetText(c_red, signPostFont, fa_center, fa_middle);
	//draw_text(x, y - 20, string(spriteWidth) + " " + string(spriteHeight));
}