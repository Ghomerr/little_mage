/// @desc Set simple parallax data
/// @arg bgSpeeds
/// @arg bgNames
function initSimpleParallax() {

	// Default values
	var bgSpeeds = [0.2, 0.1, 0.05];
	var bgNames = ["Close","Mid","Far"];
	var bgOffsetY = 230;

	if (argument_count > BG_CFG.NAMES and argument[BG_CFG.NAMES] != noone) {
		bgSpeeds = argument[BG_CFG.NAMES];
	}
	if (argument_count > BG_CFG.SPEEDS and argument[BG_CFG.SPEEDS] != noone) {
		bgNames = argument[BG_CFG.SPEEDS];
	}
	if (argument_count > BG_CFG.OFFSET_Y and argument[BG_CFG.OFFSET_Y] != noone) {
		bgOffsetY = argument[BG_CFG.OFFSET_Y];
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
		
		backgroundOffsetY = bgOffsetY;
	}
}
