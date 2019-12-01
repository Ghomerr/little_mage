// Animation
if (!isPlayer and hsp != 0) {
	// Sprite orientation
	image_xscale = sign(hsp) * size;
}
if (isGrounded) {
	if (hsp != 0) {
		// Entity running
		sprite_index = runningSprite;
		image_speed = 1;
	} else {
		// Entity is idle
		switch (idleDelay) {
			case -1:
				sprite_index = defaultSprite;
				break;
				
			case 0:
				// Random blinking
				var idleRnd = irandom_range(1, 100);
				if (idleRnd == 50) {
					// Blink once or twice
					idleDelay = irandom_range(1, 2);
					sprite_index = idleSprite;
					image_speed = 1;
				} else {
					sprite_index = defaultSprite;
					image_speed = 0;
				}
				break;
		}
	}
} else {
	image_speed = 1;
	if (vsp > 0) {
		// Entity falling
		sprite_index = fallingSprite;
	} else {
		// Entity jumping
		sprite_index = jumpingSprite;
	}
}