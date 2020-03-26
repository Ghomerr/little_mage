/// @description Create infect object on following instance

// Inherit the parent event
event_inherited();

// Create the infect object
if (followInstance) {
	with (collidingInstance) {
		with(instance_create_layer(x, y, other.layer, natureInfectObject)) {
			collidingInstance = other;
		}
	}
}
