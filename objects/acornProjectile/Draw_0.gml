/// @description Debug
draw_self();

if (instance_exists(playerObject) and playerObject.isDebugEnabled) {
	drawSetText(debugColor, signPostFont, fa_center, fa_middle);
	draw_text(x, y - 10, string(direction));
}