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
			var otherMonster = instance_place(x, y, abstractMonster);
			changeMonsterDirection();
			nextX *= move;
			with (otherMonster) {
				changeMonsterDirection();
			}
		} else {
			isCollidingOther = false;
		}	
	}
	
	if (handleHorizontalCollision(nextX)) {
		// Reverse direction
		move = -move;
		debugColor = c_blue;
	}
	
	handleVerticalCollision(nextY);
	updatePosition();
	handleAnimations();
	
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