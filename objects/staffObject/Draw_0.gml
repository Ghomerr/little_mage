/// @description Handle staff drawing and player invul frames
if (playerObject.isVisible) {
	if (playerObject.flash == 0 and playerObject.invulCounter > 0) {
		shader_set(playerObject.invulShader);
		draw_self();
		shader_reset();
	} else {
		draw_self();
	}
}