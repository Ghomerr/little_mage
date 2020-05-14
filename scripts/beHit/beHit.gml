/// @desc be hit by something
/// @arg damage
if (flash <= 0) {
	if (argument0 > 0) {
		if (isPlayer) {
			// If player has death hearts, decrease them first
			if (deathHearts > 0) {
				deathHearts--;
				emitDeathParticles(0, 0, spriteWidth, 50, false);
				if (deathHearts > 0) {
					deathHeartsCounter = deathHeartsTimer;	
				}
			}
			hp--; // Player only takes damages one by one hp
			with(gameManager) heartSpriteScale = 2;
		} else {
			hp -= argument0;
		}

		audio_sound_pitch(manaBoltHitSound, choose(0.8, 1.0, 1.2));
		audio_play_sound(manaBoltHitSound, 5, false);
		flash = hitDelay;
	}
	hitfrom = point_direction(x, y, other.x, other.y) + ANGLE.OPPOSITE;
	hitFromX = other.x;
}