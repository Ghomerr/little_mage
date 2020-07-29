/// @description Init move and scale with size
event_inherited();

DYING_JUMP = 3;

//isBeingHit = false;
isAttacking = false;
idleRestart = true;

// Compute sprite width
//spriteWidth = (bbox_right - bbox_left) * size; // done in the parent !
//spriteHeight = (bbox_bottom - bbox_top) * size; // unused for now

// Set the yscale of the monster according to its size
image_yscale = size;

// Debug
debugColor = c_red;

// Shooting init
canShoot = shootingRate > 0 and shootingRange > 0;
shootCounter = 0;
myProjectile = noone;
isCollidingOther = false;