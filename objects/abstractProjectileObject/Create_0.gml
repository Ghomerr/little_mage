/// @description Internal variables
prjSpeed = DEFAULT_SPEED;
debugColor = c_red;
isAimingRight = true;
collidingAngle = -1;

hsp = 0;
hspRatio = 0;
vsp = 0;
vspRatio = 0;
MAX_FALL_SPEED = 3;

isShootableInstance = false;
collidingInstance = noone;
hasCollidedLivingEntity = false;
projectileDelay = 20;

// Play sound
event_user(1);