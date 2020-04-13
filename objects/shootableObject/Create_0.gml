/// @description Internal variables
initHp = hp;
projectileCounter = 0;
flash = 0;
hitfrom = 0;
hitFromX = 0;

// If collidable, create a wall instance scaled to this instance
if (isCollidable) {
	with(instance_create_layer(x, y, getLayer(LAYER.WALLS), wallObject)) {
		other.wall = self;
		// Scale wall to the shootable object dimension
		image_xscale = other.sprite_width / sprite_width;
		image_yscale = other.sprite_height / sprite_height;
	}
} else {
	wall = noone;
}

inGravityBubble = false;
