/// @description Handle hands drawing when no weapon and handle invul frames too
if (playerObject.isVisible and !playerObject.hasWeapon and !playerObject.isOnLadder) {
	if (playerObject.flash == 0 and playerObject.invulCounter > 0) {
		shader_set(playerShader);
		shader_set_uniform_f(playerObject.transparencyUniform, playerObject.invulShaderTransparent ? 0.0 : 0.5);
		shader_set_uniform_f(playerObject.useColorSwapUniform, false);
		draw_self();
		shader_reset();
	} else {
		draw_self();
	}
}
