/// @arg offsetX
/// @arg offsetY
/// @arg maxOdd
function tryToSpreadFire(argument0, argument1, argument2) {

	var foundInstance = instance_place(x + argument0, y + argument1, shootableObject);
	if (foundInstance) {
		if (foundInstance.id != id and irandom_range(1, argument2) == 1) {
			applyBurntEffect(foundInstance, noone, min(MAX_BURNT, burntCounter * 1.5));
		}
	}


}
