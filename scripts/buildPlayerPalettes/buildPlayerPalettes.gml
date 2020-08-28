function buildPlayerPalettes() {
	// Nature colors
	var natureOutlineColors = [42, 96, 46];
	var natureFillColors = [68, 137, 26];
	var natureLeftLegColors = [38, 86, 71];
	var natureRightLegColors = [19, 58, 59];
	var natureColors = [natureOutlineColors, natureFillColors, natureLeftLegColors, natureRightLegColors];

	// Ice colors
	var iceOutlineColors = [0, 87, 132];
	var iceFillColors = [49, 162, 242];
	var iceLeftLegColors = [11, 43, 108];
	var iceRightLegColors = [7, 35, 88];
	var iceColors = [iceOutlineColors, iceFillColors, iceLeftLegColors, iceRightLegColors];

	// Stone colors
	var stoneOutlineColors = [124, 98, 71];
	var stoneFillColors = [155, 122, 89];
	var stoneLeftLegColors = [139, 128, 80];
	var stoneRightLegColors = [102, 101, 72];
	var stoneColors = [stoneOutlineColors, stoneFillColors, stoneLeftLegColors, stoneRightLegColors];

	// Fire colors
	var fireOutlineColors = [125, 11, 17];
	var fireFillColors = [209, 19, 32];
	var fireLeftLegColors = [125, 39, 11];
	var fireRightLegColors = [100, 31, 9];
	var fireColors = [fireOutlineColors, fireFillColors, fireLeftLegColors, fireRightLegColors];

	// Death colors
	var deathOutlineColors = [0, 0, 0];
	var deathFillColors = [34, 35, 32];
	var deathLeftLegColors = [26, 30, 23];
	var deathRightLegColors = [18, 25, 18];
	var deathColors = [deathOutlineColors, deathFillColors, deathLeftLegColors, deathRightLegColors];

	// Electric colors
	var elecOutlineColors = [46, 22, 124];
	var elecFillColors = [75, 37, 207];
	var elecLeftLegColors = [95, 45, 162];
	var elecRightLegColors = [61, 42, 137];
	var elecColors = [elecOutlineColors, elecFillColors, elecLeftLegColors, elecRightLegColors];

	// Wind colors
	var windOutlineColors = [189, 173, 178];
	var windFillColors = [230, 230, 230];
	var windLeftLegColors = [158, 135, 142];
	var windRightLegColors = [130, 105, 112];
	var windColors = [windOutlineColors, windFillColors, windLeftLegColors, windRightLegColors];

	// Wind colors
	var gravityOutlineColors = [147, 33, 63];
	var gravityFillColors = [214, 49, 85];
	var gravityLeftLegColors = [175, 35, 64];
	var gravityRightLegColors = [108, 44, 59];
	var gravityColors = [gravityOutlineColors, gravityFillColors, gravityLeftLegColors, gravityRightLegColors];

	return [
		natureColors,
		iceColors,
		stoneColors,
		fireColors,
		deathColors,
		elecColors,
		windColors,
		gravityColors
	];
}
