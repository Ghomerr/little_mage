/// @description Handle movement and collisions

// Falling projectile
if (isFalling) {
	x += hsp;
	y += vsp;
	if (vsp < MAX_FALL_SPEED) {
		vsp += GRV;
	}
	
	// Handle wall objects collision
	handleCollisionWith(wallObject);
	
} else if (prjSpeed > 0) {
	// Update projectile coordinates
	x += lengthdir_x(prjSpeed, direction);
	y += lengthdir_y(prjSpeed, direction);

	/// Handle collision with shootable objects first then walls
	var collidingInstance = handleCollisionWith(shootableObject);
	if (collidingInstance != noone) {
		with(collidingInstance) {
			if (!isDying) {
				beHit();
			}
		}
	} else {
		// Handle wall objects collision
		handleCollisionWith(wallObject);
	}
}