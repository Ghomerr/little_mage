/// @description Init running player
image_speed = 0;
image_index = HATS.NONE;
alarm[0] = irandom_range(30,120);
currentProjectile = noone;
maxWidth = camera_get_view_width(view_camera[0]);