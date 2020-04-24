// Animation
var imgSpd = frozenCounter > 0 ? 0.3 : 1;

if (inGravityBubble) {
	sprite_index = hitSprite;
	return;
}
if ((!isPlayer or !hasWeapon) and hsp != 0) {
	// Sprite orientation
	image_xscale = sign(hsp) * size;
}
if (isGrounded) {
	if (hsp != 0) {
		// Entity running
		sprite_index = runningSprite;
		image_speed = imgSpd;
	} else {
		// For monsters : handle attack animation
		if (!isPlayer and isAttacking) {
			// Restart animation
			if (shootCounter == shootingRate) {
				image_index = 0;
				image_speed = imgSpd;
				sprite_index = attackSprite;
			}
		}
		
		// Is player or is not attacking : idle animation
		if (isPlayer or !isAttacking) {
			// Entity is idle
			switch (idleDelay) {
				case -1:
					sprite_index = defaultSprite;
					if (idleRestart) {
						idleRestart = false;
						image_speed = 0;
						alarm[0] = irandom_range(30, 90);
					}
					break;
				
				case 0:
					// Random blinking
					var idleRnd = irandom_range(1, 100);
					if (idleRnd == 50) {
						// Blink once or twice
						idleDelay = irandom_range(1, 2);
						sprite_index = idleSprite;
						image_speed = imgSpd;
					} else {
						sprite_index = defaultSprite;
						image_speed = 0;
					}
					break;
			}
		}
	}
} else {
	image_speed = imgSpd;
	if (isBeingHit) {
		sprite_index = hitSprite;
	} else {
		if (vsp > 0) {
			// Entity falling
			sprite_index = fallingSprite;
		} else {
			// Entity jumping
			sprite_index = jumpingSprite;
		}
	}
}

if (sprite_index != defaultSprite) {
	idleRestart = true;
}