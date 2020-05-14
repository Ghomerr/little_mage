/// @description Spawn crate
if (room == testRoom) {
	var posX = (sign(image_xscale) ? ceil (x / 16) + 1 : floor(x / 16) - 1) * 16;
	var posY = y - 16;
	
	// Massive spawn
	if (keyboard_check(vk_alt)) {
		
		for (var row = 0 ; row < 10 ; row++) {
			for (var col = 0 ; col < 10 ; col++) {
				var deltaX = posX + sign(image_xscale) * col * 16;
				var deltaY = posY - row * 16;
				instance_create_layer(deltaX, deltaY, global.entitiesLayer, crate1Object);
			}
		}
		
	} else {
		// Spawn one crate only
		instance_create_layer(posX, posY, global.entitiesLayer, crate1Object);	
	}	
}
