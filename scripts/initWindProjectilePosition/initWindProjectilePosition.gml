function initWindProjectilePosition(posX, posY) {
	var collidingWall = instance_place(posX, posY, wallObject);
	
	if (bbox_bottom >= collidingWall.bbox_top) {
		y -= (bbox_bottom - collidingWall.bbox_top) + 1;
	} else if (bbox_top <= collidingWall.bbox_bottom) {
		y += (collidingWall.bbox_bottom - bbox_top) - 1;
	}

	isGrounded = true;
}
