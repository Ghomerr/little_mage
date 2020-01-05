// Player constants
isPlayer = true;
grv = 0.2; // gravity
spd = 2; // running speed
jump = 4; // jumping force
size = 1;
// https://twitter.com/Case_Portman/status/1183067181480890368
JUMP_COOLDOWN = 5; // Frames before a jump can be done
COYOTE_MAX = 10; // Frames during the player can still jump in air 
gpMin = 0.8; // minimum value for gamepad 
GAME_SPEED = game_get_speed(gamespeed_fps);
WEAPON_Y_OFFSET = 8;

// Player variables
hp = 1;
initHp = hp;
hasWeapon = false;
isDying = false;
isVisible = true;
controller = false;
hsp = 0; // horizonral speed
vsp = 0; // vertical speed
isDebugEnabled = false;
debugFactor = 15;
maxYbeforeDead = 0;

isGrounded = false; // grounded flag
isJumping = true; // jumping flag (true to avoid creating player air-jump)
jumpBuffer = 0; // jump buffer to handle jump before the actual jump
coyoteCounter = 0;

flash = 0; // counter to handle player being hit
hasControl = false; // define if player can do inputs
move = 0; // movement orientation
lastMonster = 0;

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

// Sound
isFootStepSoundPlayed = false;