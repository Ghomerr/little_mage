function initWindProjectilePosition(argument0, argument1) {
	var collidingWall = instance_place(argument0, argument1, wallObject);
	
	if (bbox_bottom >= collidingWall.bbox_top) {
		y -= (bbox_bottom - collidingWall.bbox_top) + 1;
	} else if (bbox_top <= collidingWall.bbox_bottom) {
		y += (collidingWall.bbox_bottom - bbox_top) - 1;
	}

	isGrounded = true;


}
