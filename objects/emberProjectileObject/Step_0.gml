/// @description Handle life, position
if (life > 0) {

	// Compute particle direction
	var partDir = isGrounded ? ANGLE.UP : point_direction(x, y, hsp, vsp);
	// Emit particles
	emitFireParticles(
		partDir,
		partDir,
		partDir,
		1,
		1
	);
		
	var nextX = x + hsp;
	var nextY = y + roundVsp(vsp);
	
	// Add burnt effect to shootable objects
	if (place_meeting(nextX, nextY, shootableObject)) {
		applyBurntEffect(instance_place(nextX, nextY, shootableObject), shooter, burntTimer);
	}
	
	updateVspWithGravity(vsp, jump);
	if (handleHorizontalCollision(nextX) or handleVerticalCollision(nextY)) {
		var wallInstance = instance_place(nextX, nextY, wallObject);
		if (wallInstance and wallInstance.owner) { 
			applyBurntEffect(wallInstance.owner, shooter, burntTimer);
		}
	}
	updatePosition();
	
	if (isGrounded) {
		hsp = 0;
		life--;
	}
	
} else {
	instance_destroy();	
}


