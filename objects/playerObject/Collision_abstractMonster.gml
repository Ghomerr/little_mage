/// @desc Handle monster collision 
with(other) {
	// Dispatch event to monster
	event_user(EVENT.PLAYER_COLLISION);
}