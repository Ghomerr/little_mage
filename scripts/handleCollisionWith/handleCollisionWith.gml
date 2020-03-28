/// @desc handle collisions with given entity type
/// @arg object type to check collision with
/// @arg nextX of projectile
/// @arg nextY of projectile

if (place_meeting(argument1, argument2, argument0)) {
	// Avoid self shooting
	var collidingInstance = instance_place(argument1, argument2, argument0);

	if (shooter == collidingInstance.id) {
		debugColor = c_green;
		return noone;
	}
	
	// Platforms don't collide with projectiles
	if (object_is_ancestor(collidingInstance.object_index, wallObject) 
		and collidingInstance.isPlatform) 
	{
		debugColor = c_aqua;
		return noone;	
	}
	
	debugColor = c_yellow;
	prjSpeed = 0; // stop projectile
	
	// For shooting instance, check if it can be followed
	if (object_is_ancestor(collidingInstance.object_index, shootableObject)) {
		followInstance = true;
		hasCollidedLivingEntity = collidingInstance.isLivingEntity;
	}
	self.collidingInstance = collidingInstance;
	
	// Save colliding angle
	collidingAngle = getCollidingAngle(collidingInstance);
	
	// Update projectile position to be pixel perfect
	/*var doX = true;
	while(!place_meeting(x, y, argument0)) {
		if (doX) {
			x += sign(hsp);
		} else {
			y += sign(vsp);
		}
		doX = !doX;
	}*/
	
	// Change into a burst depending of
	if (followInstance and onEntityBurstObject != noone) {
		instance_change(onEntityBurstObject, true);
	} else {
		instance_change(burstObject, true);
	}
	
	//layer_add_instance("Environment", id);
	//depth++;
	
	return collidingInstance;
} else {
	debugColor = c_red;
	return noone;
}
