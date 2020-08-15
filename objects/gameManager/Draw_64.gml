/// @description Draw score
if (room != menuRoom and instance_exists(playerObject)) {
	
	// Draw kills counter
	if (global.kills > 0) {
		// Kills text counter
		drawSetText(c_black, menuFont, fa_right, fa_top);
		draw_text_transformed(killsTextShadowX, killsTextShadowY, killsText, killsTextScale, killsTextScale, 0);
		draw_set_color(c_white);
		draw_text_transformed(killsTextX, killsTextY, killsText, killsTextScale, killsTextScale, 0);
		// Kills sprite counter
		draw_sprite_ext(killsCounterSprite, 0, killsCounterX, killsCounterY, killsTextScale, killsTextScale, 0, c_white, 1);
	}
	
	// Draw coins counter
	if (global.coins > 0 or global.coinsPickedUp) {
		// Coins sprite counter
		draw_sprite_ext(coinsCounterSprite, 0, coinsSpriteX, coinsSpriteY, coinsTextScale, coinsTextScale, 0, c_white, 1);
		// Coins text counter
		drawSetText(c_black, menuFont, fa_left, fa_top);
		draw_text_transformed(coinsTextShadowX, coinsTextShadowY, coinsText, coinsTextScale, coinsTextScale, 0);
		draw_set_color(coinsColor);
		draw_text_transformed(coinsTextX, coinsTextY, coinsText, coinsTextScale, coinsTextScale, 0);
	}
	
	// Draw health heart sprites
	for (var i = 0 ; i < playerObject.initHp ; i++) {
		// Move sprite x according to current heart to draw
		var spriteX = heartSpriteX + (heartSpriteWidth * heartSpriteScale + heartSpriteGap) * i;
		
		// Check if health is above current heart
		draw_sprite_ext(heartSprite, getHeartState(i), spriteX, heartSpriteY, heartSpriteScale, heartSpriteScale, 0, c_white, 1);
	}
	
	// Draw magic frames
	draw_sprite_ext(frameSprite, 0, primaryFramePosX, frameSpritePosY, 1, 1, 0, c_white, 1);
	draw_sprite_ext(frameSprite, 0, secondayFramePosX, frameSpritePosY, 1, 1, 0, c_white, 1);
	
	with (staffObject) {
		if (projectile != noone) {
			draw_sprite_ext(
				projectile.guiSprite,
				projectile.guiSubImg,
				other.primaryFrameCenterPosX + projectile.guiOffsetPosX,
				other.frameCenterPosY + projectile.guiOffsetPosY,
				projectile.guiScaleX,
				projectile.guiScaleY,
				0, c_white, 1
			);
		}
		if (secondary != noone) {
			draw_sprite_ext(
				secondary.guiSprite,
				secondary.guiSubImg,
				other.secondaryFrameCenterPosX + secondary.guiOffsetPosX,
				other.frameCenterPosY + secondary.guiOffsetPosY,
				secondary.guiScaleX,
				secondary.guiScaleY,
				0, c_white, 1
			);
		}
	}
	
	// DEBUG DIALOG
	if (isDebugOpen) {
		draw_set_alpha(0.5);
		draw_set_color(c_black);
		draw_rectangle(0, RES_H - 40, RES_W, RES_H, 0);
		draw_set_alpha(1);
		drawSetText(commandResultColor, signPostFont, fa_left, fa_middle);
		draw_text(10, RES_H - 30, commandResult);
		draw_set_color(c_white);
		draw_text(10, RES_H - 10, debugText);
	}
	
	if (isDebugFpsEnabled) {
		draw_set_alpha(0.5);
		draw_set_color(c_black);
		draw_rectangle(0, 0, RES_W, 20, 0);
		draw_set_alpha(1);
		drawSetText(c_white, signPostFont, fa_left, fa_middle);
		draw_text(10, 10, "FPS: " + currentFpsDisplay);
	}
}