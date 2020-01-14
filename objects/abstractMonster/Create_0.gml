/// @description Init move and scale with size

// Compute sprite width
spriteWidth = (bbox_right - bbox_left) * size;
//spriteHeight = (bbox_bottom - bbox_top) * size; // unused for now

// Creation post-process
if (move == 0) move = choose(1, -1);

// Set the yscale of the monster according to its size
image_yscale = size;

// Debug
debugColor = c_red;
