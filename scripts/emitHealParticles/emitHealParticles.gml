/// @desc emit heal particles
/// @arg target
/// @arg healRange of particles
function emitHealParticles(target, healRange) {
	with(target) {
		repeat(3) {
			part_particles_create(
				pm.ps, 
				x + irandom_range(-healRange, healRange), 
				y + irandom_range(-healRange, healRange), 
				pm.healParticle, 
				1
			);
		}
	}
}
