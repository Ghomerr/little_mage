/// @desc emit heal particles
/// @arg target
/// @arg healRange of particles

with(argument0) {
	repeat(3) {
		part_particles_create(
			pm.ps, 
			x + irandom_range(-argument1, argument1), 
			y + irandom_range(-argument1, argument1), 
			pm.healParticle, 
			1
		);
	}
}