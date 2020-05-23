/// @description Handle updates
event_inherited();

if (!inGravityBubble) {
	initMovement();
}

debugColor = c_red;

var nextX = x + hsp;
var nextY = y + roundVsp(vsp);

// While not dying, do normal cycle 
if (!isDying) {
	
	var hasCollidedOther = false;
		
	// Dont walk off edges
	if (isGrounded and isAfraidOfHeight and !place_meeting(x + sign(hsp) * (spriteWidth+1) + hsp, y + 1, wallObject)) {
		
		// Check if beneath wall is one tile large to reverse direction or not
		var beneathWall = instance_place(x, y + 1, wallObject);
		if (beneathWall != noone and beneathWall.sprite_width > 16) {
			// Reverse direction
			move = -move;
			nextX *= move;
			hsp *= move;
			debugColor = c_green;
		}
		
	} else {
		// Handle monster colliding
		if (place_meeting(x, y, abstractMonster)) {
			hasCollidedOther = true;
		} else if (isCollidingOther) {
			isCollidingOther = false;
		}
	}
	
	if (handleHorizontalCollision(nextX)) {
		// Reverse direction
		move = -move;
		debugColor = c_blue;
	} else if (hasCollidedOther and !isCollidingOther) {
		var otherMonster = instance_place(x, y, abstractMonster);
		changeMonsterDirection();
		nextX *= move;
		with (otherMonster) {
			changeMonsterDirection(-other.move);
			// Spread electrical shock
			if (other.elecShockCounter > 0 and elecShockCounter <= 0) {
				elecShockCounter = other.elecShockCounter;
			}
		}
	}
	
	var wasGrounded = isGrounded;
	handleVerticalCollision(nextY);
	if (!wasGrounded and isGrounded) {
		isBeingHit = false;	// reset being hit after landing
	}
	
	updatePosition();
	handleAnimations();
	if (deathMarkCounter > 0) {
		deathMarkCounter--;
		emitDeathParticles(0, 0, spriteHalfWidth, 1, false, false);	
	}
	
	if (elecShockCounter > 0 and elecShockCounter % 60 == 0) {
		emitElectricalParticles(4, 8, spriteWidth);	
	}
	
} else {
	// When dying, handle only the falling
	handleHorizontalCollision(nextX);
	// If dying and is grounded, change to dead object
	if (handleVerticalCollision(nextY) and isGrounded) {
		with(instance_create_layer(round(x), round(y), global.deadsLayer, deadObject)) {
			image_xscale = other.image_xscale;
			image_yscale = other.image_yscale;
		}
		instance_destroy();
	}
	updatePosition();
}