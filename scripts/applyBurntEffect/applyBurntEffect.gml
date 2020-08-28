/// @description Add brunt effect
/// @arg target
/// @arg shooterId
/// @arg burntTimer
function applyBurntEffect(argument0, argument1, argument2) {

	with (argument0) {
	
		// If frozen, remove the effect
		if (frozenCounter > 0) {
			frozenCounter = 0;	
		} else {
			// If not already burnt and not the shooter
			if (burntCounter <= 0 and argument1 != id) {
				burntCounter = argument2;
			}
		}
	}


}
