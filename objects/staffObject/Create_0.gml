/// @desc Init variables

// Staff constants
STAFF_LENGTH = 11;
STAFF_DISPERSION = 3;

// Staff variables
firingDelay = 0;
isAimingRight = true;
projectile = noone;
secondary = noone;

// Projectile
PROJECTILES = [
	natureProjectileObject, // nature
	iceProjectileObject,	// ice
	stoneProjectileObject,	// stone
	fireProjectileObject,  // fire
	deathProjectileObject,	// death
	electricalProjectileObject,	// elec
	windProjectileObject,	// wind
	gravityProjectileObject,	// gravity
	flameProjectileObject	// mana bolt
];

// Create hidden projectiles to be able to use their variables (ie guiXXX)
for (var p = 0; p < array_length_1d(PROJECTILES); p++) {
	var proj = PROJECTILES[p];
	if (proj != noone) {
		with(instance_create_layer(-100, -100, getLayer(LAYER.PROJECTILES), proj)) {
			persistent = true;
			visible = false;
			isActive = false;
		}
	}
}

SECONDARY_MAGICS = [
	natureLadderObject,
	noone,
	noone,
	noone,
	noone,
	noone,
	noone,
	noone,
	noone
];

// Create hidden projectiles to be able to use their variables (ie guiXXX)
for (var s = 0; s < array_length_1d(SECONDARY_MAGICS); s++) {
	var sec = SECONDARY_MAGICS[s];
	if (sec != noone) {
		with(instance_create_layer(-100, -100, getLayer(LAYER.PROJECTILES), sec)) {
			persistent = true;
			visible = false;
			isActive = false;
		}
	}
}

changeStaffMagic();