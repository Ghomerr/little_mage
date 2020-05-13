enum LAYER {
	PROJECTILES,
	PLAYER,
	MONSTERS,
	ENTITIES,
	DEADS,
	WALLS
}

switch (argument0) {
	case LAYER.PROJECTILES:
		if (global.projLayer == -1) global.projLayer = layer_get_id("Projectiles");
		return global.projLayer;	
	
	case LAYER.PLAYER:
		if (global.playerLayer == -1) global.playerLayer = layer_get_id("Player");
		return global.playerLayer;
		
	case LAYER.MONSTERS:
		if (global.monstersLayer == -1) global.monstersLayer = layer_get_id("Monsters");
		return global.monstersLayer;
	
	case LAYER.ENTITIES:
		if (global.entitiesLayer == -1) global.entitiesLayer = layer_get_id("Entities");
		return global.entitiesLayer;
	
	case LAYER.DEADS:
		if (global.deadsLayer == -1) global.deadsLayer = layer_get_id("Deads");
		return global.deadsLayer;
	
	case LAYER.WALLS:
		if (global.wallLayer == -1) global.wallLayer = layer_get_id("Walls");
		return global.wallLayer;
}