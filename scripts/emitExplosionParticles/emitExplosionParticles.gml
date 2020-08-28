/// @desc emit fire explosion particles
/// @arg range
/// @arg count
function emitExplosionParticles(argument0, argument1) {

	repeat(argument1) {
		part_particles_create(
			pm.ps, 
			x + irandom_range(-argument0, argument0),
			y + irandom_range(-argument0, argument0), 
			pm.fireExplosion, 
			1
		);
	}


}
