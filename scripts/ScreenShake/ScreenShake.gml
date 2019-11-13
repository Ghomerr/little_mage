/// @desc Init a screen shake
/// @arg magnitude of the shake
/// @arg frameDuration of the shake

with (cameraObject) {
	if (argument0 > shakeRemain) {
		shakeRemain = argument0;
		shakeMagnitude = argument0;
		shakeLength = argument1;
	}
}