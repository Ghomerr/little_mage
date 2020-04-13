/// @desc Init variables

// Staff constants
STAFF_LENGTH = 11;
STAFF_DISPERSION = 3;

// Staff variables
firingDelay = 0;
isAimingRight = true;

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

changeStaffMagic();