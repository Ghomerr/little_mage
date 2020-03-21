if (argument0 == "Walls") {
	if (global.wallLayer == -1) {
		global.wallLayer = layer_get_id(argument0);
	}
	return global.wallLayer;
}