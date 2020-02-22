/// @description If done with CTRL key, go fullscreen
if (keyboard_check(vk_control)) {
	// Toggle fullscreen mode
	window_set_fullscreen(!window_get_fullscreen());
}