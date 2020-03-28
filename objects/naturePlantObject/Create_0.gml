/// @description Init variables

enum PLANT_STATE {
	GROWTH,
	INFECTED,
	NORMAL,
	DEATH
}

state = PLANT_STATE.GROWTH;
followInstance = false;
onLivingInstance = false;
collidingInstance = noone;
collidingAngle = ANGLE.MIN;
projectileAngle = ANGLE.MIN;
posXOffset = 0;
posYOffset = 0;
life = 150;