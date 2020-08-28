/// @desc Init a screen shake
/// @arg magnitude of the shake
/// @arg frameDuration of the shake
function screenShake(magnitude, frameDuration) {
	with (cameraObject) {
		if (magnitude > shakeRemain) {
			shakeRemain = magnitude;
			shakeMagnitude = magnitude;
			shakeLength = frameDuration;
		}
	}
}
