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
		if (deathMarkCounter > 0) {
			addDeathHeart();
			emitDeathParticles(0, 0, spriteHalfWidth, irandom_range(40, 50), false, true);
		} else {
			createAppleUsingOdd();	
		}
		
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
	if (canShoot) {
		if (shootCounter > 0) {
			shootCounter -= getDefaultSpeed();
		} else if (instance_exists(playerObject) and !playerObject.isDying and playerObject.invulCounter <= 0) {
			// Check if target is in range
			event_user(0); // -> isTargetInRange is computed by the current monster			
			if (isTargetInRange) {
				// Turn monster face to the player
				var newScale = sign(playerObject.x - x);
				if (newScale != 0) {
					image_xscale = newScale * size;
					move = move != 0 ? getDefaultSpeed() * newScale : 0;
				}
			
				// Handle shooting
				shootCounter = shootingRate;
				var wallInstance = collision_line(x, y, playerObject.x, playerObject.y, wallObject, false, true);
				// Attack if no wall or it's a platform
				if (wallInstance == noone or wallInstance.isPlatform) {
					isAttacking = true;
				} else {
					isAttacking = false;
				}
				
			} else {
				isAttacking = false;
				shootCounter = 0;
			}
		}
	}
}