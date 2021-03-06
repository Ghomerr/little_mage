/// @description Flash object
draw_self();

if (inGravityBubble) {
	draw_sprite_ext(gravityBubbleSprite, 0, x, y, 
		abs(image_xscale) * gravityBubbleScale,
		image_yscale * gravityBubbleScale, 
		0, c_white, 1);
}

// If flash is positive
if (flash > 0) {
	// Decrement
	flash--;
	// Apply hit shader
	shader_set(hitShader);
	draw_self();
	shader_reset();
} else if (frozenCounter > 0) {
	shader_set(frozenShader);
	draw_self();
	shader_reset();
} else if (burntCounter > 0) {
	shader_set(burntShader);
	draw_self();
	shader_reset();
}

/*
if (playerObject.isDebugEnabled) {
	draw_healthbar(x-10, y-15, x+10, y-13, 100*(hp/initHp), c_black, c_red, c_green, 0, true, false);	
}
*/