/// @description Destroy other bubbles

// Inherit the parent event
event_inherited();

// Destroy other bubbles on shooting
if (instance_exists(gravityBurstObject)) {
	var i;
	for (i = 0; i < instance_number(gravityBurstObject); i++) {
		with(instance_find(gravityBurstObject, i)) {
			life = 0;
		}
	}
}