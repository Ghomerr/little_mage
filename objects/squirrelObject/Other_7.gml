/// @description Restart animation at one frame
// Inherit the parent event
event_inherited();

if (isAttacking) {
	image_speed = 0;
	
	// Create or launch projectile
	with (myProjectile) {
		shooter = other.id;
		layer_add_instance("Projectiles", self);
		prjSpeed = DEFAULT_SPEED > 0 ? DEFAULT_SPEED : BACKUP_SPEED;
		direction = point_direction(other.x, other.y, playerObject.x, playerObject.y);
		image_angle = direction;		
	}
	myProjectile = noone;
	
} else {
	switch (sprite_index) {
		// Restart
		case squirrelFallingSprite:
		case squirrelJumpingSprite:
			image_index = 4;
			break;
	}
}