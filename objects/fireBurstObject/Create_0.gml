/// @description Burst particles

part_type_direction(pm.fireExplosion, ANGLE.MIN, ANGLE.MAX, 0, 0);
part_particles_create(pm.ps, x + irandom_range(-3, 3), y + irandom_range(-3, 3), pm.fireExplosion, irandom_range(10, 15));
instance_destroy();