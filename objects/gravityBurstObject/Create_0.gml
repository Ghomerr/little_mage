/// @description Init bubble + particles

// Inherit the parent event
event_inherited();

// If the target is a shootable instance
if (isShootableInstance) {
	life = 300;
	isDone = false;
	collidingInstance.inGravityBubble = true;
	collidingInstance.hsp = 0;
	spriteHalfWidth = collidingInstance.sprite_width / 2;
	spriteHalfHeight = collidingInstance.sprite_height / 2;
} else {
	isDone = true;
	life = 0;
}

emitGravityParticles(1, 2, irandom_range(4, 6), 4, 4);