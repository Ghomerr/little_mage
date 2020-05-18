/// @description Check if dead
if (hp <= 0) {
		
	createGravityBubbleBurst();
	
	if (burstObject != noone) {
		instance_change(burstObject, true);
	} else {
		instance_destroy();
	}
}