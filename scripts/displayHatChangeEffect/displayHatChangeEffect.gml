flash = 5;

switch (selectedHat) {
	case HATS.NATURE:
		burstLeafParticles();
		break;
		
	case HATS.ICE:
		burstSnowParticles(0.75, spriteHalfWidth, spriteHalfWidth, 10);
		break;
		
	case HATS.FIRE:
		emitExplosionParticles(spriteHalfWidth, irandom_range(10, 15));
		break;
		
	case HATS.STONE:
		
		break;
		
	case HATS.ELECTRIC:
		break;
		
	case HATS.DEATH:
		break;
		
	case HATS.WIND:
		break;
		
	case HATS.GRAVITY:
		break;
}