/// @description Draw score
if (room != menuRoom and instance_exists(playerObject)) {
	
	#region kills_counter
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
	#endregion
	
	#region coins_counter
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
	#endregion
	
	#region heart_counter
	// Draw health heart sprites
	for (var i = 0 ; i < playerObject.initHp ; i++) {
		// Move sprite x according to current heart to draw
		var spriteX = heartSpriteX + (heartSpriteWidth * heartSpriteScale + heartSpriteGap) * i;
		
		// Check if health is above current heart
		draw_sprite_ext(heartSprite, getHeartState(i), spriteX, heartSpriteY, heartSpriteScale, heartSpriteScale, 0, c_white, 1);
	}
	#endregion
	
	#region current_magics
	if (instance_exists(playerObject) and playerObject.hasWeapon) {
		
		// Draw current magics
		with (playerObject) {
			var primaryMagicFrameGuiConfig = other.PRIMARY_MAGIC_FRAME_GUI_CONF[currentHat];
			if (primaryMagicFrameGuiConfig[MAGIC_FRAME_GUI_CONF.SPRITE] != noone) {
				var isPrimaryFiring = staffObject.primaryDelay > 0;
				// draw magic background
				draw_sprite_ext(frameSprite, 1, other.primaryFramePosX, other.frameSpritePosY, 1, 1, 0, 
					isPrimaryFiring ? c_ltgray : primaryMagicFrameGuiConfig[MAGIC_FRAME_GUI_CONF.BG_COLOR], 
					1);
				// draw primary magic
				draw_sprite_ext(
					primaryMagicFrameGuiConfig[MAGIC_FRAME_GUI_CONF.SPRITE],
					primaryMagicFrameGuiConfig[MAGIC_FRAME_GUI_CONF.SUBIMG],
					other.primaryFrameCenterPosX + primaryMagicFrameGuiConfig[MAGIC_FRAME_GUI_CONF.OFFSET_X],
					other.frameCenterPosY + primaryMagicFrameGuiConfig[MAGIC_FRAME_GUI_CONF.OFFSET_Y],
					primaryMagicFrameGuiConfig[MAGIC_FRAME_GUI_CONF.SCALE_X],
					primaryMagicFrameGuiConfig[MAGIC_FRAME_GUI_CONF.SCALE_Y],
					0, c_white, (isPrimaryFiring ? 0.5 : 1)
				);
				// Draw cooldown display
				if (isPrimaryFiring) {
					drawPie(other.primaryFrameCenterPosX, other.frameCenterPosY, staffObject.primaryDelay, staffObject.primaryCooldown, c_red, other.PIE_RADIUS, 0.8);
				}
			}
			var secondaryMagicFrameGuiConfig = other.SECONDRARY_MAGIC_FRAME_GUI_CONF[currentHat];
			if (secondaryMagicFrameGuiConfig[MAGIC_FRAME_GUI_CONF.SPRITE] != noone) {
				var isSecondaryFiring = staffObject.secondaryDelay > 0;
				// draw magic background
				draw_sprite_ext(frameSprite, 1, other.secondayFramePosX, other.frameSpritePosY, 1, 1, 0, 
					isSecondaryFiring ? c_ltgray : secondaryMagicFrameGuiConfig[MAGIC_FRAME_GUI_CONF.BG_COLOR], 
					1);
				// draw secondary magic
				draw_sprite_ext(
					secondaryMagicFrameGuiConfig[MAGIC_FRAME_GUI_CONF.SPRITE],
					secondaryMagicFrameGuiConfig[MAGIC_FRAME_GUI_CONF.SUBIMG],
					other.secondaryFrameCenterPosX + secondaryMagicFrameGuiConfig[MAGIC_FRAME_GUI_CONF.OFFSET_X],
					other.frameCenterPosY + secondaryMagicFrameGuiConfig[MAGIC_FRAME_GUI_CONF.OFFSET_Y],
					secondaryMagicFrameGuiConfig[MAGIC_FRAME_GUI_CONF.SCALE_X],
					secondaryMagicFrameGuiConfig[MAGIC_FRAME_GUI_CONF.SCALE_Y],
					0, c_white, (isSecondaryFiring ? 0.5 : 1)
				);
				// Draw cooldown display
				if (isSecondaryFiring) {
					drawPie(other.secondaryFrameCenterPosX, other.frameCenterPosY, staffObject.secondaryDelay, staffObject.secondaryCooldown, c_red, other.PIE_RADIUS, 0.8);
				}
			}
		}
	#endregion
	
	#region magic_frames
		// Draw magic frames
		draw_sprite_ext(frameSprite, 0, primaryFramePosX, frameSpritePosY, 1, 1, 0, c_white, 1);
		draw_sprite_ext(frameSprite, 0, secondayFramePosX, frameSpritePosY, 1, 1, 0, c_white, 1);
	}
	#endregion
	
	#region debug
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
	#endregion
}