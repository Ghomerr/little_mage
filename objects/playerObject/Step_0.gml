// User inputs
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