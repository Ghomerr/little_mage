var collidingWall = instance_place(argument0, argument1, wallObject);
if (collidingWall.isPlatform and collidingWall.bbox_top <= bbox_bottom) {
	isGrounded = false;
	return true;
} 
return false;