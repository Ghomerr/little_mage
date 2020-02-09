/// @desc send this entity in the air after being hit
var xLen = argument_count > 0 ? argument[0] : 6;
var yLen = argument_count > 1 ? argument[1] : 4;

if (!isBeingHit) {
	direction = hitfrom;
	hsp = lengthdir_x(xLen, direction);
	vsp = lengthdir_y(yLen, direction)-2;
	move = (hsp != 0) ? sign(hsp) : 1;
	image_xscale = -move;
}