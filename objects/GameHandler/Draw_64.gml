/// @description Draw score
if (room != menuRoom and instance_exists(playerObject) and global.kills > 0) {
	
	drawSetText(c_black, menuFont, fa_right, fa_top);
	
	
	
	draw_text_transformed(killsTextShadowX, killsTextShadowY, killsText, killsTextScale, killsTextScale, 0);
	draw_set_color(c_white);
	draw_text_transformed(killsTextX, killsTextY, killsText, killsTextScale, killsTextScale, 0);
	
	draw_sprite_ext(killsCounterSprite, 0, killsCounterX, killsCounterY, killsTextScale, killsTextScale, 0, c_white, 1);
}