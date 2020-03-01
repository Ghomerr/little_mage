/// @description Draw debug
if (isDebugEnabled) {
	var options = "";
	if (instance_exists(abstractMonster) and abstractMonster.isDebugEnabled) {
		options += " Monsters hitboxes";
	}
	if (instance_exists(wallObject) and wallObject.visible) {
		options += (string_length(options) > 0 ? " +" : "") + " Walls hitboxes";
	}
	drawSetText(c_white, signPostFont, fa_left, fa_top);
	draw_text(16, 16, "Debug Enabled" + (string_length(options) > 0 ? ":" + options : ""));
	draw_text(16, 32, "FPS: " + string(game_get_speed(gamespeed_fps)));
}