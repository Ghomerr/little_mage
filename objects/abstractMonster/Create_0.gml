/// @description Init move and scale with size
DYING_JUMP = 3;

// Compute sprite width
spriteWidth = (bbox_right - bbox_left) * size;
//spriteHeight = (bbox_bottom - bbox_top) * size; // unused for now

// Set the yscale of the monster according to its size
image_yscale = size;

// Debug
debugColor = c_red;
