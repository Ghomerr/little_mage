function handleBackgroundsParallax(camera) {
	with (backgroundManager) {
		for (var i = 0; i < array_length(backgroundsIds); i++) {
			if (layer_exists(backgroundsIds[i])) {
				layer_x(backgroundsIds[i], camera.x * backgroundsSpeeds[i]);
			}
		}
	}
}