/// @description Specific variables and create wall without scale

// By default : no collidable, no wall created
event_inherited();

// Wall scales
wallXScale = 1.5; // pillar height (24) / wall sprite width (16)
wallYScale = 0.375; // pillar width (6) / wall sprite width (16)

// Sprite offset position regarding stoneBurstObject
posOffset = 8;

// Create wall : actually collidable after creating custom wall
isCollidable = true;
with(instance_create_layer(x, y, getLayer(LAYER.WALLS), wallObject)) {
	other.wall = self;
	owner = other;
}

// Handle shake and autodestruction
life = 120;
shakingLife = life / 4;
shakeMagnitude = 1;
shakeTimer = 5;
shakeCounter = 0;