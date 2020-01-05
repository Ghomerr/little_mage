/// @description Handle transitions 
if (mode != TRANS_MODE.OFF) {
	// Update percent
	if (mode == TRANS_MODE.INTRO) {
		percent = max(PERCENT_MIN, percent - max(percent / T_SPEED, T_STEP));
	} else {
		percent = min(PERCENT_MAX, percent + max((PERCENT_MAX - percent) / T_SPEED, T_STEP));
	}
	
	// Handle transition end
	if (percent == PERCENT_MIN || percent == PERCENT_MAX) {
		switch (mode) {
			// Stop transition
			case TRANS_MODE.INTRO:
				mode = TRANS_MODE.OFF;
				break;
				
			// Go to next room
			case TRANS_MODE.GOTO:
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;
				
			// Restart the game
			case TRANS_MODE.RESTART:
				game_restart();
				break;
		}
	}
}