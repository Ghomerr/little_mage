/// @desc Create an apple with the given odd
/// @arg odd

if (isInfected and irandom_range(1, argument0) == 1) {
	with(instance_create_layer(x, y, global.projLayer, appleObject)) {
		var dir = irandom_range(ANGLE.UP_RIGHT, ANGLE.UP_LEFT);
		hsp = lengthdir_x(jump, dir);
		vsp = lengthdir_y(jump, dir);
	}
}