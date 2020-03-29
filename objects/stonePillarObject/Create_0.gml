/// @description Specific variables and create wall without scale

// init shootable object hp
initHp = hp;

// Wall scales
wallXScale = 1.5; // pillar height (24) / wall sprite width (16)
wallYScale = 0.375; // pillar width (6) / wall sprite width (16)

// Sprite offset position regarding stoneBurstObject
posOffset = 8;

// Create wall
wall = noone;
with(instance_create_layer(x, y, getLayer(LAYER.WALLS), wallObject)) {
	other.wall = self;
}

// Handle shake and autodestruction
life = 120;
shakingLife = life / 4;
shakeMagnitude = 1;
shakeTimer = 5;
shakeCounter = 0;