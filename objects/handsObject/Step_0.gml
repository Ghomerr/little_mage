/// @description Move hands with player
x = playerObject.x + sign(playerObject.image_xscale);
y = playerObject.y + (playerObject.isCrouched ? playerObject.WEAPON_Y_OFFSET_CROUCHED : playerObject.WEAPON_Y_OFFSET);
image_xscale = playerObject.image_xscale;