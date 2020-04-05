/// @description init tornado
image_angle = ANGLE.MIN;
life = 240;
isDying = false;
damage = 1;

spriteWidth = sprite_get_width(windTornadoSprite) + 1;
MIN_HSP = 0.3;
MAX_HSP = 0.75;
MAX_FALL_DETECT = MIN_HSP + MAX_HSP;
TIME_FACTOR = 8;
MAX_VSP = 2;

grv = 0.02;
vsp = 0;
hsp = 0;
move = isAimingRight ? 1 : -1;
isGrounded = false;
image_xscale = move;


// If tornado is inside a wall, move it out
if (!hasCollidedLivingEntity and place_meeting(x, y, wallObject)) {
	initWindProjectilePosition(x, y);
}