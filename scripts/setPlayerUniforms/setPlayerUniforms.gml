function setPlayerUniforms() {
	// Enable color swapping
	var currentSprite = sprite_index;
	var currentImage = image_index;

	with (playerObject) {
		// No flashing
		shader_set_uniform_f(isFlashingUniform, false);
	
		if (enableColorSwapping) {
			shader_set_uniform_f(useColorSwapUniform, true);
			
			// Target colors to replace
			shader_set_uniform_f(outlineColorUniform, 94, 94, 94);
			shader_set_uniform_f(fillColorUniform, 157, 157, 157);
			shader_set_uniform_f(leftLegColorUniform, 42, 59, 78);
			shader_set_uniform_f(rightLegColorUniform, 27, 38, 50);
			
			// Palette to use as replacement
			/*shader_set_uniform_f(newOutlineColorUniform, 42, 96, 46);
			shader_set_uniform_f(newFillColorUniform, 68, 137, 26);
			shader_set_uniform_f(newLeftLegColorUniform, 38, 86, 71);
			shader_set_uniform_f(newRightLegColorUniform, 19, 58, 59);*/
			var outlinePalette = currentPalette[PALETTE.OUTLINE];
			var fillPalette = currentPalette[PALETTE.FILL];
			var leftLegPalette = currentPalette[PALETTE.LEFT_LEG];
			var rightLegPalette = currentPalette[PALETTE.RIGHT_LEG]
			shader_set_uniform_f(newOutlineColorUniform, outlinePalette[COLOR.R], outlinePalette[COLOR.G], outlinePalette[COLOR.B]);
			shader_set_uniform_f(newFillColorUniform, fillPalette[COLOR.R], fillPalette[COLOR.G], fillPalette[COLOR.B]);
			shader_set_uniform_f(newLeftLegColorUniform, leftLegPalette[COLOR.R], leftLegPalette[COLOR.G], leftLegPalette[COLOR.B]);
			shader_set_uniform_f(newRightLegColorUniform, rightLegPalette[COLOR.R], rightLegPalette[COLOR.G], rightLegPalette[COLOR.B]);
		
			// Cloth texture 
			var clothSpriteTexure = sprite_get_texture( clothSprite, currentHat );
			texture_set_stage( clothTextureSampler, clothSpriteTexure );
		
			var playerUV = sprite_get_uvs( currentSprite, currentImage );
			var clothUV = sprite_get_uvs( clothSprite, currentHat );
		
			shader_set_uniform_f( playerUvUniform, playerUV[0], playerUV[1], playerUV[2]-playerUV[0], playerUV[3]-playerUV[1] );
			shader_set_uniform_f( clothUvUniform, clothUV[0], clothUV[1], clothUV[2]-clothUV[0], clothUV[3]-clothUV[1] );

		
		} else {
			shader_set_uniform_f(useColorSwapUniform, false);
		}
	}
}
