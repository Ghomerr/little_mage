/// @description Stop anim + create ladder
image_speed = 0;
image_index = image_number - 1;
ladder = instance_create_layer(x, y, getLayer(LAYER.WALLS), ladderObject);

// Create another ladder if it's possible
if (ladderPos < totalHeight) {
	with(instance_create_layer(x, y - gameManager.TILE_SIZE, getLayer(LAYER.ENTITIES), natureLadderObject)) {
		// Init ladder vars
		ladderPos = other.ladderPos + 1;
		totalHeight = other.totalHeight;
		
		// Check if it's a middle or top ladder
		if (ladderPos < totalHeight) {
			type = NAT_LADDER.MIDDLE;
			sprite_index = natureLadderMiddleSprite;
		} else {
			type = NAT_LADDER.TOP;
			sprite_index = natureLadderTopSprite;
		}
		
		// Save reference
		other.nextLadder = self;
	}
}