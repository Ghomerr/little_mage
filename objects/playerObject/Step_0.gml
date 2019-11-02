// User inputs
keyLeft = keyboard_check(ord("Q"));
keyRight = keyboard_check(ord("D"));
keyJump = keyboard_check_pressed(vk_space);
move = keyRight - keyLeft;

// DEBUG
debugPlayer();

initMovement();

// Decrease jump buffer is it's positive
if (jumpBuffer > 0) {
	jumpBuffer--;	
}

// Only jump when player is grounded
if (keyJump and isGrounded) {
	// Handle jump and reset jump buffer
	vsp -= jump;
	jumpBuffer = 0;
	
} else if (keyJump and jumpBuffer == 0) {
	// If player pressed jump before being on ground, start the buffer
	jumpBuffer = jumpCooldown;
}

handleHorizontalCollision();

if (handleVerticalCollision()) {
	// Actually hit the ground with the jump buffer positive
	if (jumpBuffer > 0) {
		// Handle jump and reset jump buffer
		vsp -= jump;
		jumpBuffer = 0;
	}
}

updatePosition();

handleAnimations();