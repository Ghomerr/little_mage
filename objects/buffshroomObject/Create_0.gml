// Monster constants
/*isPlayer = false;
spd = 1; // running speed
jump = 3; // jumping force
grv = 0.3; // gravity
hitDelay = 5;*/

// Monster variables
/*hp = 4; // health points
hsp = 0;
vsp = 0;
isGrounded = false;
flash = 0; // delay for damage flash
hitfrom = 0;
isDying = false;*/

// Animations 
/*idleDelay = -1; // no idle
defaultSprite = buffshroomSprite;
runningSprite = buffshroomRunningSprite;
fallingSprite = buffshroomFallingSprite;
jumpingSprite = buffshroomJumpingSprite;
hitSprite = buffshroomHitSprite;*/

// Creation post-process
if (move == 0) move = 1;
// Set the yscale of the monster according to its size
image_yscale = size;