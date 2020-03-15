/// @description Restart animation at one frame
// Inherit the parent event
event_inherited();

if (isAttacking) {
	image_speed = 0;
	
	// Create or launch projectile
	with (myProjectile) {
		shooter = other.id;
		layer_add_instance(global.projLayer, self);
		prjSpeed = DEFAULT_SPEED > 0 ? DEFAULT_SPEED : BACKUP_SPEED;
		direction = point_direction(other.x, other.y, playerObject.x, playerObject.y) + random_range(-3, 3);
		hsp = lengthdir_x(prjSpeed, direction);
		vsp = lengthdir_y(prjSpeed, direction);
		image_angle = direction + ANGLE.UP; // +90° to turn acorn in the right direction when shooted
		image_speed = 1;
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