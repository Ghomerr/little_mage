function displayHatChangeEffect() {
	flash = 5;

	switch (selectedHat) {
	
		case HATS.NATURE:
			audio_play_sound(natureProjectileSound, 5, false);
			burstLeafParticles();
			break;
		
		case HATS.ICE:
			audio_play_sound(iceProjectileSound, 5, false);
			burstSnowParticles(0.75, spriteHalfWidth, spriteHalfWidth, 10);
			break;
		
		case HATS.FIRE:
			audio_play_sound(fireProjectileSound, 5, false);
			emitExplosionParticles(spriteHalfWidth, irandom_range(10, 15));
			break;
		
		case HATS.STONE:
			audio_play_sound(stoneProjectileSound, 5, false);
			emitStoneParticles(
				ANGLE.MIN, ANGLE.MAX,
				1, 3,
				spriteHalfWidth, irandom_range(8, 16)
			);
			break;
		
		case HATS.ELECTRIC:
			audio_play_sound(electricalBurstSound, 5, false);
			emitElectricalParticles(5, 10, spriteHalfWidth, 1, 2);
			break;
		
		case HATS.DEATH:
			audio_play_sound(deathProjectileSound, 5, false);
			emitDeathParticles(ANGLE.UP, 0, spriteHalfWidth, irandom_range(10, 20), false, true);
			break;
		
		case HATS.WIND:
			audio_play_sound(windTornadoSound, 5, false);
			emitWindDustParticles(
				ANGLE.MIN, ANGLE.MAX,
				false,
				spriteHalfWidth, spriteHalfHeight,
				x, y,
				irandom_range(10, 20)
			);
			break;
		
		case HATS.GRAVITY:
			audio_play_sound(gravityProjectileSound, 5, false);
			emitGravityParticles(1, 2, irandom_range(5, 10), spriteHalfWidth, spriteHalfWidth);
			break;
	}
}
