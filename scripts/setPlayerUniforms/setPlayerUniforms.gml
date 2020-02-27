// Enable color swapping
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
		shader_set_uniform_f(newOutlineColorUniform, 42, 96, 46);
		shader_set_uniform_f(newFillColorUniform, 68, 137, 26);
		shader_set_uniform_f(newLeftLegColorUniform, 38, 86, 71);
		shader_set_uniform_f(newRightLegColorUniform, 19, 58, 59);
		
		// Cloth texture 
		var textureSampler = shader_get_sampler_index( playerShader, "clothTexture" );
		var clothSprite = sprite_get_texture( playerSprite, 1 );
		texture_set_stage( textureSampler, clothSprite );
		
		var playerUV = sprite_get_uvs( playerSprite, 0 );
		var clothUV = sprite_get_uvs( playerSprite, 1 );
		
		shader_set_uniform_f( shader_get_uniform( playerShader, "playerUV" ), playerUV[0], playerUV[1], playerUV[2]-playerUV[0], playerUV[3]-playerUV[1] );
		shader_set_uniform_f( shader_get_uniform( playerShader, "clothUV" ), clothUV[0], clothUV[1], clothUV[2]-clothUV[0], clothUV[3]-clothUV[1] );

		
	} else {
		shader_set_uniform_f(useColorSwapUniform, false);
	}
}