/// @description Burst particles and embers

// Send embers
repeat(irandom_range(1, 3)) {
	with (instance_create_layer(x, y, global.projLayer, emberProjectileObject)) {		
		// Play sound
		//audio_sound_pitch(sound, choose(0.9, 1.0, 1.1));
		//audio_play_sound(sound, 5, false);
		//shooter = playerObject.id;
		prjSpeed = irandom_range(DEFAULT_SPEED/2, DEFAULT_SPEED);
		direction = other.collidingAngle + irandom_range(-ANGLE.HALF_CORNER, ANGLE.HALF_CORNER);
		//isAimingRight = other.isAimingRight;
		hsp = lengthdir_x(prjSpeed, direction);
		vsp = lengthdir_y(prjSpeed, direction);
		hspRatio = hsp / prjSpeed;
		vspRatio = vsp / prjSpeed;
		image_angle = direction;
	}
}

// Emit particles
part_type_direction(pm.fireExplosion, ANGLE.MIN, ANGLE.MAX, 0, 0);
part_particles_create(pm.ps, x + irandom_range(-3, 3), y + irandom_range(-3, 3), pm.fireExplosion, irandom_range(10, 15));
instance_destroy();