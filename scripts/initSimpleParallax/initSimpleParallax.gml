/// @desc Set simple parallax data
/// @arg bgSpeeds
/// @arg bgNames
function initSimpleParallax() {

	// Default values
	var bgNames = ["Close","Mid","Far"];
	var bgSpeeds = [0.6, 0.3, 0.1];

	if (argument_count > 0) {
		bgSpeeds = argument[0];
	}
	if (argument_count > 1) {
		bgNames = argument[1];
	}

	with(instance_create_layer(0, 0, "Cameras", backgroundManager)) {
	
		// Init backgrounds ids
		for (var i = 0 ; i < array_length(bgNames) ; i++) {
			backgroundsIds[i] = layer_get_id(bgNames[i]);
		}
	
		// Init backgrounds speed
		for (var i = 0 ; i < array_length(bgSpeeds) ; i++) {
			backgroundsSpeeds[i] = bgSpeeds[i];
		}
	}
}
