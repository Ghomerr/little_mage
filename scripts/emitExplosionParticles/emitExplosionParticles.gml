/// @desc emit fire explosion particles
/// @arg range
/// @arg count
function emitExplosionParticles(range, count) {
	repeat(count) {
		part_particles_create(
			pm.ps, 
			x + irandom_range(-range, range),
			y + irandom_range(-range, range), 
			pm.fireExplosion, 
			1
		);
	}
}
