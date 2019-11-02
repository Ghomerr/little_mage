if (hp <= 0) {
	with(instance_create_layer(x, y, layer, buffshroomDyingObject)) {
		direction = other.hitfrom;
		hsp = lengthdir_x(jump, direction);
		vsp = lengthdir_y(jump, direction)-jump;
		move =  (hsp != 0) ? sign(hsp) : 1;
		image_xscale = move;
	}
	instance_destroy();
}