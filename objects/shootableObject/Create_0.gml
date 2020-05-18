/// @description Internal variables
SPREAD_SIZE = 16;
SPREAD_ODD = 5
MAX_BURNT = 180;

initHp = hp;
projectileCounter = 0;
flash = 0;
hitfrom = 0;
hitFromX = 0;
inGravityBubble = false;
gravityBubbleScale = 1.5;
isInfected = false;
frozenCounter = 0;
burntCounter = 0;
isInPillar = false;
isBeingHit = false;
deathMarkCounter = 0;

spriteWidth = (bbox_right - bbox_left) * size;
spriteHalfWidth = spriteWidth / 2;

// If collidable, create a wall instance scaled to this instance
if (isCollidable) {
	with(instance_create_layer(x, y, getLayer(LAYER.WALLS), wallObject)) {
		other.wall = self;
		owner = other;
		// Scale wall to the shootable object dimension
		image_xscale = other.sprite_width / sprite_width;
		image_yscale = other.sprite_height / sprite_height;
	}
} else {
	wall = noone;
}