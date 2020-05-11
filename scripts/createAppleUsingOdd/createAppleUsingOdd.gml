/// @desc Create an apple with the given odd

// Odd of apple depends of current player life. More life = less apples.
var appleOdd = instance_exists(playerObject) ? playerObject.hp + 1 : 100;

// Apples count is capped to 5
if (instance_number(appleObject) < 5 and isInfected and irandom_range(1, appleOdd) == 1) {
	with(instance_create_layer(x, y, global.projLayer, appleObject)) {
		var dir = irandom_range(ANGLE.UP_RIGHT, ANGLE.UP_LEFT);
		hsp = lengthdir_x(jump, dir);
		vsp = lengthdir_y(jump, dir);
	}
}