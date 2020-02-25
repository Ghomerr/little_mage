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
	} else {
		shader_set_uniform_f(useColorSwapUniform, false);
	}
}