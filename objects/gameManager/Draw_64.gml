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
		var fullHeart = i < playerObject.hp and playerObject.isVisible ? 0 : 1;
		draw_sprite_ext(heartSprite, fullHeart, spriteX, heartSpriteY, heartSpriteScale, heartSpriteScale, 0, c_white, 1);
	}
}