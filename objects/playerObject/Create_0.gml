// Player constants
event_inherited();

grv = 0.2; // gravity
spd = 2; // running speed
jump = 4; // jumping force

// https://twitter.com/Case_Portman/status/1183067181480890368
JUMP_COOLDOWN = 5; // Frames before a jump can be done
COYOTE_MAX = 10; // Frames during the player can still jump in air 
gpMin = 0.8; // minimum value for gamepad 
WEAPON_Y_OFFSET = 8;
INVUL_TIMER = 100;
INVUL_INTERVAL = 5;

// Player variables
canBeHit = true;
invulCounter = 0;
invulShaderTransparent = false;
hasWeapon = false;
isVisible = true;
controller = false;
hsp = 0; // horizonral speed
vsp = 0; // vertical speed
isDebugEnabled = false;
maxYbeforeDead = 0;
isGrounded = false; // grounded flag
isJumping = true; // jumping flag (true to avoid creating player air-jump)
isOnLadder = false; // on ladder
//isBeingHit = false; // is true if player is flying in the air after being hit
jumpBuffer = 0; // jump buffer to handle jump before the actual jump
coyoteCounter = 0;
hasControl = false; // define if player can do inputs
move = 0; // horizontal movement orientation
vMove = 0; // vertical movement
downCounter = 0;
downMaxTime = 30; // max time pressing down to go through a platform
ignorePlatform = false;
isAttacking = false; // player doesnt attack

// Death magic variables
deathHearts = 0; // total of death hearts
deathHeartsTimer = 600; // duration of one death heart
deathHeartsCounter = 0; // counter to decrease death heart

// Magics


// UI COnfig : x, y, min, max, hat
NAT_UI = [1, -24, 73, 107, HATS.NATURE]; // Nature - North
ICE_UI = [19, -17, 36, 68, HATS.ICE]; // Ice - North East
STO_UI = [27, 0, 1, 33, HATS.STONE]; // Stone - East
FIR_UI = [19, 17, 312, 354, HATS.FIRE]; // Fire - South East
DEA_UI = [1, 24, 235, 302, HATS.DEATH]; // Death - South
ELE_UI = [-17, 17, 182, 225, HATS.ELECTRIC]; // Electric - South West
WIN_UI = [-25, 0, 145, 176, HATS.WIND]; // Wind - West
GRA_UI = [-17, -17, 110, 142, HATS.GRAVITY]; // Gravity - North Wast
// List indexed by hats
UI_CONFIG = [NAT_UI, ICE_UI, STO_UI, FIR_UI, DEA_UI, ELE_UI, WIN_UI, GRA_UI];

// Palettes config

PLAYER_PALETTES = buildPlayerPalettes();

currentHat = HATS.NONE;
selectedHat = HATS.NONE;
currentPalette = noone;

// Gamepad inputs
hAxis = 0;
showHatsWheel = false;

// Animations
idleDelay = 0; // idle delay
defaultSprite = playerSprite;
idleSprite = playerIdleSprite;
runningSprite = playerRunningSprite;
fallingSprite = playerFallingSprite;
jumpingSprite = playerJumpingSprite;
hitSprite = playerHitSprite;
shockedSprite = playerShockedSprite;

// Shaders
isFlashingUniform = shader_get_uniform( playerShader, "isFlashing" );
transparencyUniform = shader_get_uniform( playerShader, "transparency" );

enableColorSwapping = false;
useColorSwapUniform = shader_get_uniform( playerShader, "useColorSwap" );
outlineColorUniform = shader_get_uniform( playerShader, "outlineColor" );
fillColorUniform = shader_get_uniform( playerShader, "fillColor" );
leftLegColorUniform = shader_get_uniform( playerShader, "leftLegColor" );
rightLegColorUniform = shader_get_uniform( playerShader, "rightLegColor" );

newOutlineColorUniform = shader_get_uniform( playerShader, "newOutlineColor" );
newFillColorUniform = shader_get_uniform( playerShader, "newFillColor" );
newLeftLegColorUniform = shader_get_uniform( playerShader, "newLeftLegColor" );
newRightLegColorUniform = shader_get_uniform( playerShader, "newRightLegColor" );

clothTextureSampler = shader_get_sampler_index( playerShader, "clothTexture" );
playerUvUniform = shader_get_uniform( playerShader, "playerUV" );
clothUvUniform = shader_get_uniform( playerShader, "clothUV" );

// Sound
isFootStepSoundPlayed = false;

// Debug
debugColor = c_red;