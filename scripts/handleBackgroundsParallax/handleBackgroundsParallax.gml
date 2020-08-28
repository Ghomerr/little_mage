function handleBackgroundsParallax(argument0) {
	with (backgroundManager) {
		for (var i = 0; i < array_length_1d(backgroundsIds); i++) {
			if (layer_exists(backgroundsIds[i])) {
				layer_x(backgroundsIds[i], argument0.x * backgroundsSpeeds[i]);
			}
		}
	}


}
