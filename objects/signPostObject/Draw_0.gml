/// @description Draw action marker
draw_self();

if (isPlayerInRadius and !isShowingText) {
	var spriteIndex = floor(frameCounter / ACTION_MARKER_SPRITE_SPEED);
	draw_sprite(actionMarkerSprite, spriteIndex, x, y - ACTION_MARKER_OFFSET);
}