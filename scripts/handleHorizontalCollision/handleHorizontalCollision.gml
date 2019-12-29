// Horizontal collision
if (place_meeting(x + hsp, y, wallObject)) {
	while(!place_meeting(x + sign(hsp), y, wallObject)) {
		x += sign(hsp);
	}
	hsp = 0; // block player from going through
	return true;
} else {
	return false;	
}