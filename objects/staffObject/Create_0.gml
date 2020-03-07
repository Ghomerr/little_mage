/// @desc Init variables

// Staff constants
firingCooldown = 30;
STAFF_LENGTH = 11;
STAFF_DISPERSION = 3;

// Staff variables
firingDelay = 0;
isAimingRight = true;

// Projectile
PROJECTILES = [
	natureProjectileObject, // nature
	flameProjectileObject,	// ice
	flameProjectileObject,	// stone
	flameProjectileObject,  // fire
	flameProjectileObject,	// death
	flameProjectileObject,	// elec
	flameProjectileObject,	// wind
	flameProjectileObject,	// gravity
	flameProjectileObject	// mana bolt
];

changeStaffMagic();