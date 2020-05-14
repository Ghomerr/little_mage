/// @description Handle collection

// Cannot eat apple if player has death hearts or max hp
if (other.deathHearts < 1 and other.hp < other.initHp) {

	with(gameManager) heartSpriteScale = 2;
	other.hp++;

	// Inherit the parent event
	event_inherited();
}