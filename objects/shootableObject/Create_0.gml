/// @description Internal variables
initHp = hp;

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