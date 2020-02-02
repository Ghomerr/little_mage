/// @description Create or Move acorn 


if (!isDying) {
	if (myProjectile != noone and instance_exists(myProjectile) and myProjectile.prjSpeed == 0) {
		// Move acorn according to squirrel
		myProjectile.x = x + sign(image_xscale) * projectileOffset;
	}
	
	if (myProjectile == noone and (sprite_index == defaultSprite or isAttacking and shootCounter == shootingRate)) {
		// Create a new projectile if needed
		myProjectile = instance_create_layer(x + sign(image_xscale) * projectileOffset, y+2, layer, acornProjectile);	
	}
}

// Inherit the parent event
event_inherited();