/// @desc Handle inputs, collisions, movements, animations, death
if (isVisible) {
	if (!isDying) {
		event_inherited();
		
		// Death Hearts counter
		if (deathHeartsCounter > 0) {
			deathHeartsCounter--;
		} else if (deathHearts > 0) {
			beHit(1);
		}
		
		// Handle hats wheel show input
		if (hasWeapon and !gameManager.isDebugOpen) {
			if (!showHatsWheel) {
				showHatsWheel = keyboard_check_pressed(vk_shift) or gamepad_button_check_pressed(0, gp_shoulderlb);
			} else if (keyboard_check_released(vk_shift) or gamepad_button_check_released(0, gp_shoulderlb)) {
				showHatsWheel = false;
			
				selectNewHat();
			}
		}

		// User inputs
		if (hasControl) {
			keyLeft = keyboard_check(ord("Q")) or keyboard_check(ord("A"));
			keyRight = keyboard_check(ord("D"));
			keyJump = keyboard_check_pressed(vk_space);
			hAxis = gamepad_axis_value(0, gp_axislh);

			// Check if keyboard is used
			if (keyLeft or keyRight or keyJump) {
				controller = false;
			}
			// Check if gamepad is used and get gamepad direction
			if (abs(hAxis) > gpMin) {
				keyLeft = abs(min(hAxis, 0));
				keyRight = max(hAxis, 0);
				controller = true;
			}
			if (gamepad_button_check_pressed(0, gp_face1)) {
				controller = true;
				keyJump = true;
			}

			move = keyRight - keyLeft;
		} else {
			keyLeft = 0;
			keyRight = 0;
			keyJump = 0;
		}

		initMovement();
		
		var nextX = x + hsp;
		var nextY = y + roundVsp(vsp);

		var isHorizontallyColliding = handleHorizontalCollision(nextX);
		if (isHorizontallyColliding) {
			debugColor = c_blue;	
		} else {
			debugColor = c_red;
		}

		var wasGrounded = isGrounded;
		var isVerticallyColliding = handleVerticalCollision(nextY);
		if (isVerticallyColliding) {
			if (debugColor == c_blue) {
				debugColor = c_purple;	
			} else {
				debugColor = c_green;
			}
		} else if (!isHorizontallyColliding) {
			debugColor = c_red;
		}
		
		// Diagonal collision
		if (!isHorizontallyColliding and !isVerticallyColliding) {
			if (place_meeting(nextX, nextY, wallObject)) {
				// Check if player isn't colliding a platform from beneath
				if (!isCollidingPlatform(nextX, nextY)) {
					while(!place_meeting(x + sign(hsp), y + sign(vsp), wallObject)) {
						x += sign(hsp);
						y += sign(vsp);
					}
					isGrounded = vsp > 0; // grounded only if falling
					hsp = 0;
					vsp = 0;
					debugColor = c_orange;
				}
			}
		}

		// Play landing sound only when landing
		if (!wasGrounded and isGrounded) {
			isBeingHit = false; // reset being hit when landing
			audio_sound_pitch(landingSound, choose(0.7, 1.0, 1.3));
			audio_play_sound(landingSound, 3, false);
			// Make dusts
			repeat(5) {
				with(instance_create_layer(x, bbox_bottom, global.projLayer, dustObject)) {
					vsp = 0; // Landing dust shouldn't move vertically
				}
			}
		}

		// Jump Buffer and Coyote Time: 
		// https://www.yoyogames.com/blog/544/flynn-advanced-jump-mechanics

		// Check if player is grounded
		if (isGrounded) {
			// if player is grounded, he isnt jumping, reset coyote counter
			isJumping = false;
			coyoteCounter = COYOTE_MAX;
	
			// If player hit keyJump or jump buffer is positive
			if (keyJump or jumpBuffer > 0) {
				// Do JUMP
				vsp -= jump;
				jumpBuffer = 0;
				isJumping = true;
				audio_sound_pitch(jumpSound, choose(0.9, 1.0, 1.1));
				audio_play_sound(jumpSound, 5, false);
			}
		} 
		// While not grounded :
		else { 
			// During the Coyote time
			if (coyoteCounter > 0) {
				coyoteCounter--;
				// if player is not jumping and key jump is hit
				if (!isJumping and keyJump and !isBeingHit) {
					// Do JUMP
					vsp -= jump;
					isJumping = true;
					audio_sound_pitch(jumpSound, choose(0.9, 1.0, 1.1));
					audio_play_sound(jumpSound, 5, false);
				}
			}
			// if buffer is positive
			if (jumpBuffer > 0) {
				// Decrease the buffer until the player is grounded
				jumpBuffer--;
			}
			// if player hit keyJump
			if (keyJump) {
				// start the buffer
				jumpBuffer = JUMP_COOLDOWN;
			}
		}

		updatePosition();

		handleAnimations();

		// Handle footsteps sounds
		if (sprite_index == runningSprite) {
	
			var imageIndex = round(image_index);
			var isFootStepIndex = imageIndex == 2 or imageIndex == 5;
	
			if (isFootStepIndex and !isFootStepSoundPlayed) {
				isFootStepSoundPlayed = true;
				audio_play_sound(
					choose(
						footStep1Sound,
						footStep2Sound,
						footStep3Sound,
						footStep4Sound
					), 
					1,
					false
				);
			} else if (!isFootStepIndex) {
				isFootStepSoundPlayed = false;
			}
		}
	} else {
		initMovement();
		
		var nextX = x + hsp;
		var nextY = y + roundVsp(vsp);
		
		// When dying, handle only the falling
		handleHorizontalCollision(nextX);
		// If dying and is grounded, change to dead object
		if (handleVerticalCollision(nextY) and isGrounded or y >= maxYbeforeDead) {
			audio_play_sound(landingSound, 3, false);
			isVisible = false; // hide player
			
			// Reset player data while being not visible
			resetPlayerAfterDeath();
			
			// Focus camera on dead object
			cameraObject.follow = instance_create_layer(x, y, layer, playerDeadObject);
			cameraObject.follow.image_xscale = image_xscale;
			// Move player out of the screen to avoid collision check
			x = -100;
			y = -100;
		}
		updatePosition();
	}
}