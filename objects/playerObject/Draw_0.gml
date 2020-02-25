/// @description Draw self + debug
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