/// @description Randomly create projectiles
if (currentProjectile != noone) {
	instance_destroy(currentProjectile);
	currentProjectile = noone;
}

with(instance_create_layer(x+11, y, "Projectiles", flameProjectileObject)) {
	other.currentProjectile = self;
	speed = prjSpeed;
	direction = other.image_angle + random_range(-3, 3);
	image_angle = direction;
	
	with(buffshroomRunningObject) {
		alarm[0] = 10;	
	}
}

alarm[0] = irandom_range(30,120);