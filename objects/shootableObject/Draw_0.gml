/// @description Flash object
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

if (playerObject.isDebugEnabled) {
	draw_healthbar(x-10, y-15, x+10, y-13, 100*(hp/initHp), c_black, c_red, c_green, 0, true, false);	
}