/// @description Decrease life and handle shaking
if (life > 0) {
	life--;
	
	// Do shake
	if (life <= shakingLife) {
		if (shakeCounter == 0) {
			shakeCounter = shakeTimer;
			shakeMagnitude *= -1;
			switch (image_angle) {
				case ANGLE.UP:
				case ANGLE.DOWN:
					x += shakeMagnitude;
					break;
			
				case ANGLE.RIGHT:
				case ANGLE.LEFT:
					y += shakeMagnitude;
					break;
			}
		} else {
			shakeCounter--;
		}
	}
	
} else {
	// Destruction
	beHit(initHp);
}
