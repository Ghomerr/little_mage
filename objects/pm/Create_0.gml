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