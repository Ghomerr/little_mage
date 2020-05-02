/// @description Init move and scale with size
event_inherited();

DYING_JUMP = 3;

//isBeingHit = false;
isAttacking = false;
idleRestart = true;

// Compute sprite width
spriteWidth = (bbox_right - bbox_left) * size;
//spriteHeight = (bbox_bottom - bbox_top) * size; // unused for now

// Set the yscale of the monster according to its size
image_yscale = size;

// Debug
debugColor = c_red;

// Shooting init
shootCounter = 0;
myProjectile = noone;
isCollidingOther = false;