// Animation
var imgSpd = getDefaultSpeed();
isCrouched = false;

if (inGravityBubble) {
	sprite_index = hitSprite;
	return;
}

if ((!isPlayer or !hasWeapon) and hsp != 0) {
	// Sprite orientation
	image_xscale = sign(hsp) * size;
}

if (elecShockCounter > 0 and shockedSprite) {
	sprite_index = shockedSprite;
	image_speed = 1;
} else if (isOnLadder) {
	if (move != 0) {
		sprite_index = playerLadderJumpSprite;
		image_speed = 0;
		if (keyRight) {
			image_index = 0;
		} else {
			image_index = 1;
		}
	} else {
		var wasLadderJumpSprite = sprite_index == playerLadderJumpSprite;
		sprite_index = playerClimbingSprite;
		image_speed = sign(vsp);
		if (wasLadderJumpSprite) {
			image_index *= 2;
		}
	}
} else if (isGrounded) {
	if (hsp != 0 and !isAttacking) {
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
		} else {
			// For player and not attacking monsters
			// Is player or is not attacking : idle animation
			
			if (keyDown) {
				sprite_index = playerCrouchSprite;
				image_speed = 0;
				isCrouched = true;
			} else {
				// Entity is idle
				if (idleDelay == -1) {
					// No idle
						sprite_index = defaultSprite;
						if (idleRestart) {
							idleRestart = false;
							image_speed = 0;
							// Random init
							alarm[0] = irandom_range(30, 90);
						}
				} else if (idleDelay == 0) {
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
				} 
				// Reset idle delay 
				if (idleDelay > 0 and sprite_index != idleSprite) {
					idleDelay = 0;
				}
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