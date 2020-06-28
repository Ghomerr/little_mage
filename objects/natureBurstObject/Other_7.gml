/// @description Create infect object on following instance

// Inherit the parent event
event_inherited();

// Check if instance still exists
if (instance_exists(collidingInstance)) {
	with(instance_create_layer(x, y, layer, naturePlantObject)) {
		// init plant variables
		collidingInstance = other.collidingInstance;
		isShootableInstance = other.isShootableInstance;
		collidingAngle = other.collidingAngle;
		onLivingInstance = other.hasCollidedLivingEntity;
		projectileAngle = other.image_angle;
			
		// Move it accordingly
		initPlantPosition();
	}
}
