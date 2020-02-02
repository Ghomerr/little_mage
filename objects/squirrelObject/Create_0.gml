/// @description Choose direction and create acorn

// Inherit the parent event
event_inherited();

image_xscale *= choose (1, -1);

// Create squirrel acorn
myAcorn = instance_create_layer(x + sign(image_xscale) * 15, y+2, layer, acornProjectile);