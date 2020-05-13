/// @description Spawn Buffshroom
if (room == testRoom) {
	var posX = floor(x / 16 + sign(image_xscale)) * 16 ;
	instance_create_layer(posX, y - 16, global.monstersLayer, buffshroomObject);
}
