/// @description ?

// Inherit the parent event
event_inherited();

// If the target is a shootable instance
if (followInstance) {
	life = 180;
	collidingInstance.inGravityBubble = true;
	collidingInstance.hsp = 0;
} else {
	life = 0;
}