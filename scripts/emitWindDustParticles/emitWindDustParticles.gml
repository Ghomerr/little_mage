/// @desc emit wind dust particles
/// @arg minDirection	argument0
/// @arg maxDirection	argument1
/// @arg useGravity		argument2
/// @arg xRange			argument3
/// @arg yRange			argument4
/// @arg partX			argument5
/// @arg partY			argument6
/// @arg number			argument7
function emitWindDustParticles(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) {

	part_type_direction(pm.windDust, argument0, argument1, 0, 0);

	if (argument2)  {
		var partGrav = move ? ANGLE.LEFT : ANGLE.RIGHT;
		part_type_gravity(pm.windDust, 0.02, partGrav);
	} else {
		part_type_gravity(pm.windDust, 0, 0);
	}

	repeat(argument7) {
		part_particles_create(
			pm.ps,
			argument5 + irandom_range(-argument3, argument3),
			argument6 + irandom_range(-argument4, argument4),
			pm.windDust,
			1
		);
	}


}
