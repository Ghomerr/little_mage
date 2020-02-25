//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

// https://stackoverflow.com/a/43467645

uniform bool isFlashing;
uniform float transparency;

uniform bool useColorSwap;
uniform vec3 outlineColor;
uniform vec3 fillColor;
uniform vec3 leftLegColor;
uniform vec3 rightLegColor;

uniform vec3 newOutlineColor;
uniform vec3 newFillColor;
uniform vec3 newLeftLegColor;
uniform vec3 newRightLegColor;

void main()
{
	gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	if (isFlashing) {
		// White flashing
		gl_FragColor = vec4(1, 1, 1, gl_FragColor.a);
		
	} else {

		vec3 currentColor = gl_FragColor.rgb;

		if (useColorSwap) {
			// Make it easier to compare (out of 255 instead of 1)
			vec3 test = vec3(
			    gl_FragColor.r * 255.0,
			    gl_FragColor.g * 255.0, 
			    gl_FragColor.b * 255.0
			);
	
			bool needReplace = false;
	
			// Check if it needs to be replaced
			if (test == outlineColor) {
				test = newOutlineColor; 
				needReplace = true;
			}
			if (!needReplace && test == fillColor) {
				test = newFillColor; 
				needReplace = true;
			}
			if (!needReplace && test == leftLegColor) {
				test = newLeftLegColor; 
				needReplace = true;
			}
			if (!needReplace && test == rightLegColor) {
				test = newRightLegColor; 
				needReplace = true;
			}

			//return the result in the original format
			if (needReplace) {
				currentColor = vec3(
				    test.r / 255.0,
				    test.g / 255.0,
				    test.b / 255.0
				);
			}
		}
		
		gl_FragColor = vec4(currentColor.r, currentColor.g, currentColor.b, gl_FragColor.a * transparency);
	}
}
