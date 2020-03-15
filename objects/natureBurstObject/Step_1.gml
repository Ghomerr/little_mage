/// @description Move burst object
if (followInstance) {
	with (collidingInstance) {
		other.x = x;
		other.y = y;
	}
}