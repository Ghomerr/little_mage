/// @description Draw self + hats wheel + debug
if (isVisible) {
	
	shader_set(playerShader);
	
	show_debug_message("flash=" + string(flash));
	
	if (flash > 0) {
		// Handle flashing on hit
		flash--;
		shader_set_uniform_f(isFlashingUniform, true);
		shader_set_uniform_f(useColorSwapUniform, false);	
		
	} else {
		// Handle transparency after being hit
		if (invulCounter > 0) {
			shader_set_uniform_f(transparencyUniform, invulShaderTransparent ? 0.0 : 0.5);
			
			// When interval is reached, changed shader
			if (invulCounter % INVUL_INTERVAL == 0) {
				invulShaderTransparent = !invulShaderTransparent;
			}
	
			invulCounter--;
		} else {
			shader_set_uniform_f(transparencyUniform, 1);
		}
		
		// Handle color swapping
		setPlayerUniforms();
	}
	
	draw_self();
	shader_reset();
	
	// Handle the hats selection wheel drawing
	if (showHatsWheel) {
		// Draw the wheel
		draw_sprite(hatsWheelSprite, 0, x, y);
		
		// Draw hat selector
		var tmpHat = getHatFromStaffAngle();
		if (tmpHat != noone) {
			selectedHat = tmpHat[WHEEL_UI.HAT];
			draw_sprite(hatSelectorSprite, 0, x-1 + tmpHat[WHEEL_UI.X], y + tmpHat[WHEEL_UI.Y]);
		} else {
			selectedHat = HATS.NONE;
		}
		
		// Draw currently selected hat
		if (currentHat != HATS.NONE) {
			var curHat = UI_CONFIG[currentHat];
			draw_sprite(selectedHatSprite, 0, x-1 + curHat[WHEEL_UI.X], y + curHat[WHEEL_UI.Y]);
		}
		
		// Draw hats
		draw_sprite(hatsSprite, HATS.NATURE,	x + NAT_UI[WHEEL_UI.X], y + NAT_UI[WHEEL_UI.Y]);
		draw_sprite(hatsSprite, HATS.ICE,		x + ICE_UI[WHEEL_UI.X], y + ICE_UI[WHEEL_UI.Y]);
		draw_sprite(hatsSprite, HATS.STONE,		x + STO_UI[WHEEL_UI.X], y + STO_UI[WHEEL_UI.Y]);
		draw_sprite(hatsSprite, HATS.FIRE,		x + FIR_UI[WHEEL_UI.X], y + FIR_UI[WHEEL_UI.Y]);
		draw_sprite(hatsSprite, HATS.DEATH,		x + DEA_UI[WHEEL_UI.X], y + DEA_UI[WHEEL_UI.Y]);
		draw_sprite(hatsSprite, HATS.ELECTRIC,	x + ELE_UI[WHEEL_UI.X], y + ELE_UI[WHEEL_UI.Y]);
		draw_sprite(hatsSprite, HATS.WIND,		x + WIN_UI[WHEEL_UI.X], y + WIN_UI[WHEEL_UI.Y]);
		draw_sprite(hatsSprite, HATS.GRAVITY,	x + GRA_UI[WHEEL_UI.X], y + GRA_UI[WHEEL_UI.Y]);
	}
}

if (isDebugEnabled) {
	draw_set_alpha(0.5);
	draw_rectangle_colour(bbox_left,bbox_top,bbox_right,bbox_bottom,debugColor,debugColor,debugColor,debugColor,false);
	draw_set_alpha(1);
	
	if (isGrounded) {
		draw_set_color(c_red);	
	} else {
		draw_set_color(c_black);	
	}
	
	/*
	draw_set_font(signPostFont);
	draw_set_halign(fa_middle);
	draw_text(x, y - 32, string(hitfrom));
	draw_line(x, y, x + lengthdir_x(4, hitfrom), y + lengthdir_y(4, hitfrom));
	*/
}