/// @description Handle hands drawing when no weapon and handle invul frames too
if (playerObject.isVisible and !playerObject.hasWeapon) {
	if (playerObject.flash == 0 and playerObject.invulCounter > 0) {
		shader_set(playerObject.invulShader);
		draw_self();
		shader_reset();
	} else {
		draw_self();
	}
}
