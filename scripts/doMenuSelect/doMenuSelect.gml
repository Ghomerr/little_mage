/// @desc Action done when a menu choice is selected
function doMenuSelect() {
	menuTargetX = guiWidth + menuHideOffset;
	screenShake(4, screenShakeLength);
	hasControl = false;
	audio_play_sound(selectSound, 10, false);


}
