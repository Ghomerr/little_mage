/// @desc emit wind dust particles
/// @arg minDir	
/// @arg maxDir	
/// @arg useGrav		
/// @arg xRange			
/// @arg yRange			
/// @arg partX			
/// @arg partY			
/// @arg number			
function emitWindDustParticles(minDir, maxDir, useGrav, xRange, yRange, partX, partY, number) {
	part_type_direction(pm.windDust, minDir, maxDir, 0, 0);

	if (useGrav)  {
		var partGrav = move ? ANGLE.LEFT : ANGLE.RIGHT;
		part_type_gravity(pm.windDust, 0.02, partGrav);
	} else {
		part_type_gravity(pm.windDust, 0, 0);
	}

	repeat(number) {
		part_particles_create(
			pm.ps,
			partX + irandom_range(-xRange, xRange),
			partY + irandom_range(-yRange, yRange),
			pm.windDust,
			1
		);
	}
}
