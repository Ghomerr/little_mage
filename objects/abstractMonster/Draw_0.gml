/// @description Draw flash and debug

if (!isDying and elecShockCounter > 0) {
	draw_sprite_ext(electricalShockSprite, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
}

// Inherit the parent event
event_inherited();

// Draw health bar when hp is decreased
if (!isDying and hp < initHp) {
	draw_healthbar(x-10, y-15, x+10, y-13, 100*(hp/initHp), c_black, c_red, c_green, 0, true, false);	
}

if (isDebugEnabled) {
	// Draw collision box
	draw_set_alpha(0.5);
	draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,debugColor,debugColor,debugColor,debugColor,false);
	draw_set_alpha(1);
	
	drawSetText(c_yellow, signPostFont, fa_center, fa_bottom);
	draw_text(x, y - spriteHalfHeight, string(id));
	
	// Draw spriteWidth inside the collision box
	//draw_set_color(c_black);
	//var testValue = sign(hsp) * spriteWidth / 2;
	//draw_line(x - testValue, y, x + testValue, y);
	
	// Draw spriteWidth and spriteHeight values
	/*drawSetText(c_red, signPostFont, fa_center, fa_middle);
	draw_text(x, y - 20, string(shootCounter));
	if (isAttacking) {
		draw_set_color(c_yellow);
	} else {
		draw_set_color(c_red);	
	}
	draw_text(x, y - 30, string(image_speed)); */
	//draw_text(x, y - 20, string(spriteWidth) + " " + string(spriteHeight));
}
