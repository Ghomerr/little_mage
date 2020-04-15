/// @description ?

// Inherit the parent event
event_inherited();

// If the target is a shootable instance
if (followInstance) {
	life = 300;
	isDone = false;
	collidingInstance.inGravityBubble = true;
	collidingInstance.hsp = 0;
} else {
	isDone = true;
	life = 0;
}