/// @description Check if dying to go dead
if (!isDying) {
	
	// If no more HP -> go dying
	if (hp <= 0) {
		// Shake screen on dying
		screenShake(6, 25);
		// Play dead sound
		audio_play_sound(monsterDeadSound, 10, false);
	
		isDying = true;
		
		// Handle projectiles effects
		createGravityBubbleBurst();
		createAppleUsingOdd();
		
		sprite_index = hitSprite;
		direction = other.hitfrom;
		hsp = lengthdir_x(DYING_JUMP, direction);
		vsp = lengthdir_y(DYING_JUMP, direction) - DYING_JUMP;
		move =  (hsp != 0) ? sign(hsp) : 1;
		image_xscale *= hsp != 0 ? sign(hsp) : 1;
		
		// Leave projectile fall, if any
		with (myProjectile) {
			isFalling = true;
			GRV = FALLING_GRV;
			var dir = irandom_range(ANGLE.HALF_CORNER, 135);
			hsp = lengthdir_x(MAX_FALL_SPEED, dir);
			vsp = lengthdir_y(MAX_FALL_SPEED, dir);
		}
		
		if (instance_exists(playerObject)) {
			global.kills++;
			global.killsInRoom++;
			afterUpdateKillsCounter(2);
		}
	}
	
	// If this monster can shoot
	if (shootingRate > 0 and shootingRange > 0 and instance_exists(playerObject) and !playerObject.isDying) {
		if (point_distance(x, y, playerObject.x, playerObject.y) < shootingRange) {
			// Turn monster face to the player
			var newScale = sign(playerObject.x - x);
			if (newScale != 0) {
				image_xscale = newScale * size;
			}
			
			// Handle shooting
			shootCounter -= frozenCounter > 0 ? global.frozenFactor : 1;
			if (shootCounter <= 0) {
				shootCounter = shootingRate;
				var wallInstance = collision_line(x, y, playerObject.x, playerObject.y, wallObject, false, true);
				// Attack if no wall or it's a platform
				if (!wallInstance or wallInstance.isPlatform) {
					isAttacking = true;
				} else {
					isAttacking = false;
				}
			}
		} else {
			isAttacking = false;
			shootCounter = 0;
		}
	}
}