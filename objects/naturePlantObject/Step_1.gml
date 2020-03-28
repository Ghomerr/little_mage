/// @description Handle life and move infect object

// Handle plant death
if (state != PLANT_STATE.DEATH) {
	if (life > 0) {
		life--;
	} else {
		state = PLANT_STATE.DEATH;
		sprite_index = naturePlantDeathSprite;
		image_index = 0;
	}
	
	// Move plant on a living entity
	if (instance_exists(collidingInstance)) {
		if (onLivingInstance) {
			x = collidingInstance.x + posXOffset;
			y = collidingInstance.y + posYOffset;
		}
	} else {
		state = PLANT_STATE.DEATH;
		sprite_index = naturePlantDeathSprite;
		image_index = 0;
	}
}

