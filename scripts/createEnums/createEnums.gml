// Create enums

// Menu
enum MENU_CHOICE {
	NEW_GAME = 2,
	CONTINUE = 1,
	QUIT = 0
}

// Transitions
enum TRANS_MODE {
	OFF, // Transition disabled
	INTRO, // Transition for entering a room
	GOTO, // Transition for going to another room
	RESTART // Transition for restarting the game
}

// Layers
enum LAYER {
	PROJECTILES,
	PLAYER,
	MONSTERS,
	ENTITIES,
	DEADS,
	WALLS
}

// Player Enums
enum HATS {
	NATURE,
	ICE,
	STONE,
	FIRE,
	DEATH,
	ELECTRIC,
	WIND,
	GRAVITY,
	NONE
}

// UI Constants for Wheel display
enum WHEEL_UI {
	X, Y, MIN, MAX, HAT
}

// Player life display states
enum HEART {
	EMPTY = 0,
	FULL = 1,
	DEATH_FULL = 2,
	DEATH_GOOD = 3,
	DEATH_MID = 4,
	DEATH_CRIT = 5
}

// Shaders Enums and constants
enum COLOR {
	R, G, B	
}
enum PALETTE {
	OUTLINE, FILL, LEFT_LEG, RIGHT_LEG
}

// Angles
enum ANGLE {
	MIN = 0,
	RIGHT = 0,
	HALF_CORNER = 45,
	UP_RIGHT = 45,
	UP = 90,
	CORNER = 90,
	UP_LEFT = 135,
	LEFT = 180,
	OPPOSITE = 180,
	DOWN_LEFT = 225,
	DOWN = 270,
	DOWN_RIGHT = 315,
	MAX = 359,
	COMPLETE = 360
}

// Magic enums
enum PLANT_STATE {
	GROWTH,
	INFECTED,
	NORMAL,
	DEATH
}

// Nature ladder types
enum NAT_LADDER {
	BASE,
	MIDDLE,
	TOP
}