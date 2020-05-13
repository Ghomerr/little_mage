/// @description Burst particles and embers

// Apply burnt effect directly
if (followInstance) {
	applyBurntEffect(collidingInstance, playerObject.id, burntTimer);
}

// Send embers
repeat(irandom_range(1, 3)) {
	with (instance_create_layer(x, y, global.projLayer, emberProjectileObject)) {
		if (place_meeting(x, y, wallObject)) {
			instance_destroy();
		}
		burntTimer = other.burntTimer;
		// Play sound
		//audio_sound_pitch(sound, choose(0.9, 1.0, 1.1));
		//audio_play_sound(sound, 5, false);
		shooter = playerObject.id;
		direction = other.collidingAngle + irandom_range(-ANGLE.CORNER, ANGLE.CORNER);
		hsp = lengthdir_x(jump, direction);
		vsp = lengthdir_y(jump, direction);
		image_angle = direction;
	}
}

// Emit particles
part_type_direction(pm.fireExplosion, ANGLE.MIN, ANGLE.MAX, 0, 0);
part_particles_create(pm.ps, x + irandom_range(-3, 3), y + irandom_range(-3, 3), pm.fireExplosion, irandom_range(10, 15));
instance_destroy();