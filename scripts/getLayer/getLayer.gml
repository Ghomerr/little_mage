enum LAYER {
	PROJECTILES,
	PLAYER,
	DEADS,
	WALLS
}

switch (argument0) {
	case LAYER.PROJECTILES:
		if (global.projLayer == -1) {
			global.projLayer = layer_get_id("Projectiles");
		}
		return global.projLayer;	
	
	case LAYER.PLAYER:
		if (global.playerLayer == -1) {
			global.playerLayer = layer_get_id("Player");
		}
		return global.playerLayer;
	
	case LAYER.DEADS:
		if (global.deadsLayer == -1) {
			global.deadsLayer = layer_get_id("Deads");
		}
		return global.deadsLayer;
	
	case LAYER.WALLS:
		if (global.wallLayer == -1) {
			global.wallLayer = layer_get_id("Walls");
		}
		return global.wallLayer;
}