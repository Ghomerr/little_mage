/// @description Send entity in air
if (place_meeting(x, y, abstractMonster) or place_meeting(x, y, playerObject)) {
	with (instance_place(x, y, shootableObject)) {
		if (!isInPillar) {
			isInPillar = true;
			isBeingHit = true;
			var knockback = other.jump;
			var jumpDir = 0;
			switch (other.image_angle) {
				case ANGLE.UP:
					knockback *= 1.5;
					jumpDir = ANGLE.UP + (other.x - x);
					break;
				case ANGLE.DOWN:
					knockback *= 0.5;
					jumpDir = ANGLE.DOWN - (other.x - x);
					break;	
				case ANGLE.LEFT:
					jumpDir = ANGLE.UP_LEFT;
					break;
				case ANGLE.RIGHT:
					jumpDir = ANGLE.UP_RIGHT;
					break;
			}
			hsp = lengthdir_x(knockback, jumpDir);
			vsp = lengthdir_y(knockback, jumpDir);
			move = (hsp != 0) ? sign(hsp) : 1;
		}
	}
}
