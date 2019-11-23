// Player constants
grv = 0.2; // gravity
spd = 2; // running speed
jump = 4; // jumping force
// https://twitter.com/Case_Portman/status/1183067181480890368
jumpCooldown = 15; // number of frames before the actual jump 
gpMin = 0.2; // minimum value for gamepad 

// Player variables
controller = false;
hsp = 0; // horizonral speed
vsp = 0; // vertical speed
isGrounded = false; // grounded flag
jumpBuffer = 0; // jump buffer to handle jump before the actual jump
flash = 0; // counter to handle player being hit
hasControl = false; // define if player can do inputs
move = 0; // movement orientation

// Gamepad inputs
hAxis = 0;

// Animations
idleDelay = 0; // idle delay
defaultSprite = playerSprite;
idleSprite = playerIdleSprite;
runningSprite = playerRunningSprite;
fallingSprite = playerFallingSprite;
jumpingSprite = playerJumpingSprite;
hitSprite = playerHitSprite;