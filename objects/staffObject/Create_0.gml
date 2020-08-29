/// @desc Init variables

// Staff constants
STAFF_LENGTH = 11;
STAFF_DISPERSION = 3;

// Staff variables
primaryDelay = 0;
primaryCooldown = 0;
secondaryDelay = 0;
secondaryCooldown = 0;
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

// Nature ladders handler
natureLadders = {
	maxi: 3,
	list: [noone, noone, noone],
	cursor: 0
}

changeStaffMagic();