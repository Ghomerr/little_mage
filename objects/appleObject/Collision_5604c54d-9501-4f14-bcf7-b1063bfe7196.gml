/// @description Handle collection

if (other.hp < other.initHp) {

	with(gameManager) heartSpriteScale = 2;
	other.hp++;

	// Inherit the parent event
	event_inherited();
}