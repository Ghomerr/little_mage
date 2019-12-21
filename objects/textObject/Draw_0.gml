/// @description Draw text and box
var halfWidth = textWidth * 0.5;

// Draw the box
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(
	x - halfWidth - margin,
	y - textHeight - (margin*2),
	x + halfWidth + margin,
	y,
	15,
	15,
	false
);
draw_sprite(textMarkerSprite,0,x,y);
draw_set_alpha(1);

// Draw the text
drawSetText(c_white, signPostFont, fa_center, fa_top);
draw_text(x, y - textHeight - margin, currentText);
