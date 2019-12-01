if (!isDying and hp <= 0) {
	// Shake screen on dying
	screenShake(6, 25);
	
	isDying = true;
	sprite_index = hitSprite;
	direction = other.hitfrom;
	hsp = lengthdir_x(jump, direction);
	vsp = lengthdir_y(jump, direction)-jump;
	move =  (hsp != 0) ? sign(hsp) : 1;
	image_xscale = move * size;
}