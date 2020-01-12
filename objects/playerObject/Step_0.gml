/// Desc Handle inputs, collisions, movements, animations, death
if (isVisible) {
	if (!isDying) {

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

		var isHorizontallyColliding = handleHorizontalCollision();
		if (isHorizontallyColliding) {
			debugColor = c_blue;	
		} else {
			debugColor = c_red;
		}

		var wasGrounded = isGrounded;
		var isVerticallyColliding = handleVerticalCollision();
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
		if (!isHorizontallyColliding and !isVerticallyColliding and place_meeting(x + hsp, y + vsp, wallObject)) {
			while(!place_meeting(x + sign(hsp), y + sign(vsp), wallObject)) {
				x += sign(hsp);
				y += sign(vsp);
			}
			isGrounded = vsp > 0; // grounded only if falling
			hsp = 0;
			vsp = 0;
			debugColor = c_orange;
		}

		// Play landing sound only when landing
		if (!wasGrounded and isGrounded) {
			audio_sound_pitch(landingSound, choose(0.7, 1.0, 1.3));
			audio_play_sound(landingSound, 3, false);
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
				if (!isJumping and keyJump) {
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
		// When dying, handle only the falling
		handleHorizontalCollision();
		// If dying and is grounded, change to dead object
		if (handleVerticalCollision() and isGrounded or y >= maxYbeforeDead) {
			audio_play_sound(landingSound, 3, false);
			isVisible = false; // hide player
			// Reset player data while being not visible
			isDying = false;
			hp = initHp;
			// Focus camera on dead object
			cameraObject.follow = instance_create_layer(x, y, layer, playerDeadObject);
			// Move player out of the screen to avoid collision check
			x = -100;
			y = -100;
		}
		updatePosition();
	}
}