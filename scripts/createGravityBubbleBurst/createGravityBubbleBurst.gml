function createGravityBubbleBurst() {
	if (inGravityBubble) {
		inGravityBubble = false;
		with(instance_create_layer(x, y, global.projLayer, gravityBubbleBurstObject)) {
			image_xscale = abs(other.image_xscale) * other.gravityBubbleScale;
			image_yscale = other.image_yscale * other.gravityBubbleScale;
		}
	}
}
