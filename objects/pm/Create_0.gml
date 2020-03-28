/// @description Particle Manager
ps = part_system_create();

// Fireball particle type
fireball = part_type_create();
part_type_sprite(fireball, fireParticleSprite, 0, 0, 1);
part_type_color3(fireball, c_yellow, c_red, c_maroon);
part_type_alpha3(fireball, 1, 0.8, 0.5);
part_type_size(fireball, 1, 1, -0.05, 0);
part_type_life(fireball, 20, 20);
part_type_speed(fireball, 0.5, 0.5, -0.01, 0.02);
part_type_orientation(pm.fireball, ANGLE.MIN, ANGLE.MAX, 0, 0, 0);

// Explosion particle type
fireExplosion = part_type_create();
part_type_sprite(fireExplosion, dustSprite, 1, 1, 0);
part_type_color3(fireExplosion, c_yellow, c_red, c_maroon);
part_type_alpha3(fireExplosion, 1, 0.75, 0);
part_type_size(fireExplosion, 1, 2, -0.01, 0.02);
part_type_life(fireExplosion, 30, 30);
part_type_speed(fireExplosion, 0.25, 1, -0.01, 0.02);

// Snow particles type
snow = part_type_create();
part_type_sprite(snow, snowParticleSprite, 1, 1, 0);
part_type_alpha3(snow, 1, 0.8, 0.5);
part_type_life(snow, 60, 120);
part_type_speed(snow, 0.1, 0.25, -0.01, 0);
part_type_gravity(snow, 0.01, ANGLE.DOWN);
part_type_size(snow, 0.25, 1, 0, 0);
part_type_color2(snow, $f7e483, c_white);

rock = part_type_create();
part_type_sprite(rock, stoneRockSprite, 0, 0, 0);
part_type_alpha3(rock, 1, 0.9, 0.75);
part_type_life(rock, 45, 60);
part_type_speed(rock, 0.75, 2, 0, 0);
part_type_gravity(rock, 0.1, ANGLE.DOWN);
part_type_size(rock, 0.25, 1, 0, 0);
part_type_orientation(rock, ANGLE.MIN, ANGLE.MAX, 0, 0, 0);

leafLeft = part_type_create();
part_type_sprite(leafLeft, fallingLeafLeftSprite, 1, 1, 1);
part_type_alpha3(leafLeft, 1, 0.9, 0.75);
part_type_life(leafLeft, 120, 120);
part_type_speed(leafLeft, 1, 1, -0.05, 0);
part_type_gravity(leafLeft, 0.05, ANGLE.DOWN);
part_type_size(leafLeft, 0.5, 1, 0, 0);

leafRight = part_type_create();
part_type_sprite(leafRight, fallingLeafRightSprite, 1, 1, 1);
part_type_alpha3(leafRight, 1, 0.9, 0.75);
part_type_life(leafRight, 120, 120);
part_type_speed(leafRight, 1, 1, -0.05, 0);
part_type_gravity(leafRight, 0.05, ANGLE.DOWN);
part_type_size(leafRight, 0.5, 1, 0, 0);

elec1 = part_type_create();
part_type_sprite(elec1, electricalParticle1Sprite, 1, 1, 0);
part_type_alpha3(elec1, 1, 0.75, 0.5);
part_type_life(elec1, 39, 39);
part_type_size(elec1, 0.25, 1, -0.01, 0);
part_type_orientation(elec1, ANGLE.MIN, ANGLE.MAX, 0, 0, 0);
part_type_direction(elec1, ANGLE.MIN, ANGLE.MAX, 0, 0);
part_type_speed(elec1, 0, 0, 0, 0);

elec2 = part_type_create();
part_type_sprite(elec2, electricalParticle2Sprite, 1, 1, 0);
part_type_alpha3(elec2, 1, 0.75, 0.5);
part_type_life(elec2, 39, 39);
part_type_size(elec2, 0.25, 1, -0.01, 0);
part_type_orientation(elec2, ANGLE.MIN, ANGLE.MAX, 0, 0, 0);
part_type_direction(elec2, ANGLE.MIN, ANGLE.MAX, 0, 0);
part_type_speed(elec2, 0, 0, 0, 0);
