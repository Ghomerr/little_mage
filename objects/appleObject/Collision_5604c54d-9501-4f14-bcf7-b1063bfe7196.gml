/// @description Handle collection

// Cannot eat apple if player has death hearts or max hp
if (other.deathHearts < 1 and other.hp < other.initHp) {

	with(gameManager) heartSpriteScale = 2;
	other.hp++;
	
	// Emit heal particle
	repeat(3) {
		part_particles_create(
			pm.ps, 
			other.x + irandom_range(-other.spriteWidth, other.spriteWidth), 
			other.y + irandom_range(-other.spriteWidth, other.spriteWidth), 
			pm.healParticle, 
			1
		);
	}

	// Inherit the parent event
	event_inherited();
}