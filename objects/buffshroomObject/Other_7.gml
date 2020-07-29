/// @description Finish attack

// Inherit the parent event
event_inherited();

// If attacking, stop it at the end of animation
if (isAttacking) {
	isAttacking = false;
}