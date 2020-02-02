/// @description Destroy projectil if outside of screen
if (x < 0 or y < 0 or x > room_width or y > room_height) {
	// Destroy if out of screen
	instance_destroy();
}