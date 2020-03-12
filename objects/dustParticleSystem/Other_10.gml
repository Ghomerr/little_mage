/// @description ?
show_debug_message("user 0");
part_emitter_region(particleSystem, particleEmitter, 
	psMinX, psMaxX, psMinY, psMaxY, 
	ps_shape_rectangle, ps_distr_linear);
	
//part_type_gravity(particleType, 0.5, psDir);	
part_emitter_burst(particleSystem, particleEmitter, particleType, 4);