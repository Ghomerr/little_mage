/// @description Add brunt effect
/// @arg target
with (argument0) {
	
	// If frozen, remove the effect
	if (frozenCounter > 0) {
		frozenCounter = 0;	
	} else {
		// If not already burnt and not the shooter
		if (burntCounter <= 0 and other.shooter != id) {
			burntCounter = other.burntTimer;
		}
	}
}