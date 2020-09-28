/// @description Decrease life and move
if (life > 0) {
	life--;
	
	// Handle vertical collisions
	if (!isGrounded) {
		updateVspWithGravity(abs(vsp), MAX_VSP);
		var nextY = y + roundVsp(vsp);
		if (place_meeting(x, nextY, wallObject)) {
			while (!place_meeting(x, y + sign(vsp), wallObject)) {
				y += sign(vsp);
			}
			vsp = 0;
			isGrounded = true;
		} else {
			y += vsp;
		}
	}
	
	// Update hsp
	hsp = move * (MIN_HSP + sin(life / TIME_FACTOR) * MAX_HSP);
	var nextX = x + hsp;
	
	// Handle horizontal collisions
	if (place_meeting(nextX, y, windTornadoObject)) {
		life = 0;
	} else if (isGrounded) {
		// If horizontal wall collision or possible falling
		if (place_meeting(nextX, y - 1, wallObject)
			or !place_meeting(x + move * (MAX_FALL_DETECT + spriteWidth) / 2, y + 2, wallObject)) {
			move = -move;
			image_xscale = move;
			x -= move * 2; // used to put the tornado on the same place on the ground
		} else {
			x = nextX;
		}
	}
	
	// Emit dust particles
	if (irandom_range(1, 5) == 1) {
		var partDir = isGrounded ? choose(ANGLE.RIGHT, ANGLE.LEFT) : irandom_range(ANGLE.UP - 30, ANGLE.UP + 30);
		emitWindDustParticles(
			partDir, partDir,
			isGrounded,
			2, 1,
			x, bbox_bottom, 
			1,
			c_white
		);
	}
	
} else if (!isDying) {
	isDying = true;
	sprite_index = windTornadoBurstSprite;
	image_index = 0;
}
