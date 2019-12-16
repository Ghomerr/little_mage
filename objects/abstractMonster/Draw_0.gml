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