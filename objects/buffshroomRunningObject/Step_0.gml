/// @description ?
if (isJumping) {
	// Update position with vertical speed
	y += vsp;
	vsp += grv; // gravity
	
	// if falling, change sprite
	if (vsp == 0) {
		sprite_index = buffshroomFallingSprite;
	}
	
	// if landing to the initial position, reset
	if (y >= startPosY) {
		y = startPosY;
		isJumping = false;
		vsp = 0;
		sprite_index = buffshroomRunningSprite;
	}
}