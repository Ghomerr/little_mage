/// @desc check platform collision
/// @arg xPos of the entity
/// @arg yPos of the entity
/// @arg ignorePlatform optional flag to pass through platforms
function isCollidingPlatform() {

	var collidingWall = instance_place(argument[0], argument[1], wallObject);
	var ignorePlatform = argument_count >= 3 ? argument[2] : false;

	// If colliding wall is a platform and
	// ignorePlatform flag is set or the entity comes from beneath the platform
	if (collidingWall.isPlatform and (ignorePlatform or bbox_bottom > collidingWall.bbox_top)) {
		isGrounded = false;
		return true;
	}
	return false;
}
