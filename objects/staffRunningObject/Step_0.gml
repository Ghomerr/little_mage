/// @description Handle projectile destruction
if (currentProjectile != noone and currentProjectile.x > maxWidth) {
	instance_destroy(currentProjectile);
	currentProjectile = noone;
}