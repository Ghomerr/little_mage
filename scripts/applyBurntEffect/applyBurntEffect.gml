/// @description Add brunt effect
/// @arg target
/// @arg shooterId
/// @arg burntTimer
function applyBurntEffect(target, shooterId, burntTimer) {
	with (target) {
	
		// If frozen, remove the effect
		if (frozenCounter > 0) {
			frozenCounter = 0;	
		} else {
			// If not already burnt and not the shooter
			if (burntCounter <= 0 and shooterId != id) {
				burntCounter = burntTimer;
			}
		}
	}
}
