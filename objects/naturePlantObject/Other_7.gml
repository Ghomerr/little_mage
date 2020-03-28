/// @description Switch animation after growth

switch (state) {
	case PLANT_STATE.GROWTH:
		// If following instance, change to infected sprite
		if (onLivingInstance) {
			state = PLANT_STATE.INFECTED;
			sprite_index = natureInfectedPlantMoveSprite;
		} else {
			state = PLANT_STATE.NORMAL;
			sprite_index = naturePlantMoveSprite;
		}
		image_index = 0;
		break;
		
	case PLANT_STATE.DEATH:
		instance_destroy();
		break;
}