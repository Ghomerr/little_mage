/// @description Init variables

// Inherit the parent event
event_inherited();

deathHeartDamageFactor = 0.5;
deathHeartSizeFactor = 0.5;
if (instance_exists(playerObject) and playerObject.deathHearts > 0) {
	var deathFactor = deathHeartDamageFactor * playerObject.deathHearts;
	damage += deathFactor;
	deathFactor *= deathHeartSizeFactor;
	image_xscale += sign(image_xscale) * deathFactor;
	image_yscale += deathFactor;
}

life = 120;
hspVal = 0;
vspVal = 0;
isInit = false;
deathMarkTimer = 120;