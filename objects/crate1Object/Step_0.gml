/// @description ?

// Inherit the parent event
event_inherited();

if (!isDying) {
	updateVspWithGravity(vsp, jump);
	handleHorizontalCollision(x + hsp);
	handleVerticalCollision(y + roundVsp(vsp));
	updatePosition();
	wall.x = x;
	wall.y = y;
}