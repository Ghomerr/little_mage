/// @description Create Particle System

particleSystem = part_system_create();
particleEmitter = part_emitter_create(particleSystem);
particleType = part_type_create();

part_type_sprite(particleType, dustSprite, true, true, false);
//part_type_shape(particleType, pt_shape_flare);
part_type_alpha3(particleType, 0.2, 0.8, 0);
part_type_color3(particleType, c_green, c_yellow, c_white);

part_type_life(particleType, 12, 24);
part_type_scale(particleType, 2, 2);


psMinX = 0;
psMaxX = 0;
psMinY = 0;
psMaxY = 0;
//psDir = 90;

/*
var offset = 1;
part_emitter_region(particleSystem, particleEmitter, x - offset, x + offset, y - offset, y + offset, 
	ps_shape_rectangle, ps_distr_linear);
	
part_emitter_stream(particleSystem, particleEmitter, particleType, 1);
//*/
	

