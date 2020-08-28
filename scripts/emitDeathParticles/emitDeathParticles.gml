/// @arg partDir
/// @arg dirOffset
/// @arg range
/// @arg number
/// @arg random
/// @arg useSpeed
function emitDeathParticles(partDir, dirOffset, range, number, random, useSpeed) {

	var xDelta = partDir and dirOffset ? lengthdir_x(dirOffset, partDir) : 0;
	var yDelta = partDir and dirOffset ? lengthdir_y(dirOffset, partDir) : 0;

	if (useSpeed) {
		part_type_speed(pm.deathSmoke, 0.5, 1, -0.1, 0);	
	}
	repeat(random ? irandom_range(1, number) : number) {
		part_particles_create(pm.psUnderProj, x + irandom_range(-range, range) + xDelta, y + irandom_range(-range, range) + yDelta, pm.deathSmoke, 1);
	}
	if (useSpeed) {
		part_type_speed(pm.deathSmoke, 0, 0, 0, 0);
	}
}
