/// @desc Player jumb or be hit
with (playerObject) {
	if (canBeHitBy(other) and bbox_bottom < other.y) {
	
		// When player is above the monster, jump on it
		var knockBackDirection = point_direction(x, y, other.x, other.y) + ANGLE.OPPOSITE;
		hsp = lengthdir_x(move ? spd : spd * other.bounceSpd, knockBackDirection);
		vsp = lengthdir_y(keyJump ? jump : jump * other.bounceSpd, knockBackDirection);
		move = (hsp != 0) ? sign(hsp) : getDefaultSpeed();
		
		// Shrink monster
		other.image_yscale = other.initScaleY * other.shrinkFactor;
	}
}