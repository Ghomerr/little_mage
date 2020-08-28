/// @arg offsetX
/// @arg offsetY
/// @arg maxOdd
function tryToSpreadFire(offsetX, offsetY, maxOdd) {

	var foundInstance = instance_place(x + offsetX, y + offsetY, shootableObject);
	if (foundInstance) {
		if (foundInstance.id != id and irandom_range(1, maxOdd) == 1) {
			applyBurntEffect(foundInstance, noone, min(MAX_BURNT, burntCounter * 1.5));
		}
	}
}
