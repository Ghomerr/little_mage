/// @desc drawText(color, font, hAlign, vAlign)
/// @arg color
/// @arg font
/// @arg hAlign
/// @arg vAlign
function drawSetText(color, font, hAlign, vAlign) {
	draw_set_color(color);
	draw_set_font(font);
	draw_set_halign(hAlign);
	draw_set_valign(vAlign);
}
