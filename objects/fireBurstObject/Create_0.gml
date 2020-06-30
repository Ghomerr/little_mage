/// @description Burst particles and embers

// Apply burnt effect directly
if (isShootableInstance) {
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
		direction = irandom_range(ANGLE.MIN, ANGLE.MAX);
		hsp = lengthdir_x(jump, direction);
		vsp = lengthdir_y(jump, direction);
		image_angle = direction;
	}
}

// Emit particles
emitExplosionParticles(3, irandom_range(10, 15));
instance_destroy();