/// @description Init bubble + particles

// Inherit the parent event
event_inherited();

// If the target is a shootable instance
if (followInstance) {
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

// Burst particles
part_type_speed(pm.gravitySparkle, 0.5, 0.5, -0.5, 0);
repeat (irandom_range(4, 6)) {
	part_particles_create(pm.ps, x + irandom_range(-4, 4), y + irandom_range(-4, 4), pm.gravitySparkle, 1);
}

