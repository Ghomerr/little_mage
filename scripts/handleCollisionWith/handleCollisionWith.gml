/// @desc handle collisions with given entity type
/// @arg object type to check collision with
/// @arg nextX of projectile
/// @arg nextY of projectile

if (place_meeting(argument1, argument2, argument0)) {
	// Get colliding instance
	var collidingInstance = instance_place(argument1, argument2, argument0);
	
	// Avoid self shooting
	if (shooter == collidingInstance.id) {
		debugColor = c_green;
		return noone;
	}
	
	// Avoid walls
	if (avoidWalls and collidingInstance.object_index == wallObject.object_index) {
		debugColor = c_green;
		return noone;
	}
	
	// Platforms don't collide with projectiles
	if (avoidPlatform and collidingInstance.object_index == platformObject.object_index) {
		debugColor = c_aqua;
		return noone;
	}
	
	// For shooting instance, check if it can be followed
	if (object_is_ancestor(collidingInstance.object_index, shootableObject)) {
		followInstance = true;
		hasCollidedLivingEntity = collidingInstance.isLivingEntity;
	} else {
		followInstance = false;
		hasCollidedLivingEntity = false;
	}
	self.collidingInstance = collidingInstance;
	
	// Save colliding angle
	collidingAngle = getCollidingAngle(collidingInstance);
			
	// On living entities, handle projectile health
	if (hasCollidedLivingEntity) {
		// If projectile counter is 0, projectile hits target, decrease projectile health
		if (collidingInstance.projectileCounter == 0) {
			hp--;
		} else {
			// if projectile is still passing through entity, reset counter
			collidingInstance.projectileCounter = projectileDelay;
			// No collision handled until the projectile is out of the target
			return noone;
		}
	} else {
		// On other entities, just explode the projectile
		hp = 0;
	}
		
	// If projectile health is depleted : change to burst
	if (hp <= 0) {
		debugColor = c_yellow;
		prjSpeed = 0; // stop projectile
		
		// Change into a burst depending of
		if (followInstance and onEntityBurstObject != noone) {
			instance_change(onEntityBurstObject, true);
		} else {
			instance_change(burstObject, true);
		}
	}
	
	return collidingInstance;
} else {
	debugColor = c_red;
	return noone;
}
