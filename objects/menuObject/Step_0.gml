/// @description ?
menuX += (menuTargetX - menuX) / menuSpeed;

if (hasControl) {
	
	var gamepadDirection = gamepad_axis_value(0, gp_axislv);
	if (abs(gamepadDirection) <= gpMin) gamepadIsChecked = false;
	
	// Previous menu choice, arrow goes up
	if (keyboard_check_pressed(vk_up) 
	 or keyboard_check_pressed(ord("Z")) 
	 or keyboard_check_pressed(ord("W")) 
	 or gamepadDirection < -gpMin and !gamepadIsChecked) 
	{
		gamepadIsChecked = true;
		menuChoice++;
		if (menuChoice >= length) menuChoice = 0;
	}
	
	// Next menu choice, arrow goes down
	if (keyboard_check_pressed(vk_down) 
	 or keyboard_check_pressed(ord("S")) 
	 or gamepadDirection > gpMin and !gamepadIsChecked) 
	{
		gamepadIsChecked = true;
		menuChoice--;
		if (menuChoice < 0) menuChoice = length - 1;
	}
	
	// Select menu choice
	if (keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0, gp_face1)) {
		menuTargetX = guiWidth + menuHideOffset;
		screenShake(4, screenShakeLength);
		hasControl = false;
	}
} else {
	// Handle menu choice
	switch (menuChoice) {
		case MENU_CHOICE.QUIT:
			game_end();
			break;
			
		case MENU_CHOICE.CONTINUE:
			// Load from the game save the room to start if it exists
			var startRoom = loadGameSave();
			startTransition(TRANS_MODE.GOTO, startRoom);
			break;
		
		case MENU_CHOICE.NEW_GAME:
		default:
			startTransition(TRANS_MODE.GOTO, nature1Room);
			break;
	}
}