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
	if (handleCollisionWith(shootableObject)) {
		with(instance_place(x, y, shootableObject)) {
			if (!isDying) {
				audio_sound_pitch(manaBoltHitSound, choose(0.8, 1.0, 1.2));
				audio_play_sound(manaBoltHitSound, 5, false);
				hp--;
				flash = hitDelay;
				hitfrom = other.direction;
			}
		}
	} else {
		// Handle wall objects collision
		handleCollisionWith(wallObject);
	}
}