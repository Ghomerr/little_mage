/// @description Handle menu selection
if (!isChoiceDone) {
	menuX += (menuTargetX - menuX) / menuSpeed;

	if (hasControl) {
	
		// KEYBOARD INPUTS HANDLING
	
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
			audio_sound_pitch(bipSound, choose(0.8, 1.0, 1.2));
			audio_play_sound(bipSound, 5, false);
		}
	
		// Next menu choice, arrow goes down
		if (keyboard_check_pressed(vk_down) 
		 or keyboard_check_pressed(ord("S")) 
		 or gamepadDirection > gpMin and !gamepadIsChecked) 
		{
			gamepadIsChecked = true;
			menuChoice--;
			if (menuChoice < 0) menuChoice = length - 1;
			audio_sound_pitch(bipSound, choose(0.8, 1.0, 1.2));
			audio_play_sound(bipSound, 5, false);
		}
	
		// Select menu choice
		if (keyboard_check_pressed(vk_enter) or gamepad_button_check_pressed(0, gp_face1)) {
			doMenuSelect();
		}
	
		// MOUSE INPUTS HANDLING
		var guiMouseY = device_mouse_y_to_gui(0);
		if (guiMouseY < menuY and guiMouseY > menuTop) {
			var newMenuChoice = (menuY - guiMouseY) div (fontHeight);
			// Save new value and do sound if a new menu choice is selected
			if (menuChoice != newMenuChoice) {
				menuChoice = newMenuChoice;
				audio_sound_pitch(bipSound, choose(0.8, 1.0, 1.2));
				audio_play_sound(bipSound, 5, false);
			}
		
			// Handle left click to do a choice on the menu
			if (mouse_check_button_pressed(mb_left)) {
				doMenuSelect();
			}
		}
	
	} else {
		isChoiceDone = true;
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
}