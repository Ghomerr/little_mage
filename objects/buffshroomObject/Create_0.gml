// Monster constants
isPlayer = false;
spd = 1; // running speed
jump = 5.5; // jumping force
grv = 0.3; // gravity
hitDelay = 5;

// Monster variables
hp = 4; // health points
hsp = 0;
vsp = 0;
isGrounded = false;
move = irandom_range(-1, 1);
flash = 0; // delay for damage flash
hitfrom = 0;

// Animations 
idleDelay = -1; // no idle
defaultSprite = buffshroomSprite;
runningSprite = buffshroomRunningSprite;
fallingSprite = buffshroomFallingSprite;
jumpingSprite = buffshroomJumpingSprite;
hitSprite = buffshroomHitSprite;

// Creation post-process
if (move == 0) move = 1;