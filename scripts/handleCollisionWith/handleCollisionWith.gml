/// @desc handle collisions with given entity type
/// @arg object type to check collision with
if (place_meeting(x, y, argument0)) {
	// Avoid self shooting
	var collidingInstance = instance_place(x, y, argument0);

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
	prjSpeed = 0;
	
	/*if (!isFalling) {
		// Avoid projectile to burst inside the wall object
		while(place_meeting(x, y, argument0)) {
			x -= lengthdir_x(1, direction);
			y -= lengthdir_y(1, direction);
		}
	}*/

	// If shootable instance, store it to be used later by the projectile
	if (object_is_ancestor(collidingInstance.object_index, shootableObject)) {
		self.collidingInstance = collidingInstance;
	}
	
	// Change into a burst
	instance_change(burstObject, true);
	
	//layer_add_instance("Environment", id);
	//depth++;
	
	return collidingInstance;
} else {
	debugColor = c_red;
	return noone;
}
