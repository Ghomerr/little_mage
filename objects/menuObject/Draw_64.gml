/// @description Draw Menu

// Draw Title
draw_set_font(menuTitleFont);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);
draw_text(guiHalfWidth - drawOffset, guiMargin, titleText);
draw_text(guiHalfWidth + drawOffset, guiMargin, titleText);
draw_text(guiHalfWidth, guiMargin - drawOffset, titleText);
draw_text(guiHalfWidth, guiMargin + drawOffset, titleText);
draw_set_color(c_white);
draw_text(guiHalfWidth, guiMargin, titleText);

// Draw Menu
draw_set_font(font);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for (var i = 0; i < length; i++) {

	// Init menu draw info
	var text = menu[i];
	var col = c_gray;
	
	// If current menu element is menu choice
	if (menuChoice == i) {
		text = string_insert("> ", text, 0);
		col = c_white;
	}
	
	// Draw menu outline
	var drawX = menuX;
	var drawY = menuY - (fontHeight * i);
	draw_set_color(c_black);
	draw_text(drawX - drawOffset, drawY, text);
	draw_text(drawX + drawOffset, drawY, text);
	draw_text(drawX, drawY - drawOffset, text);
	draw_text(drawX, drawY + drawOffset, text);
	
	// Draw menu text
	draw_set_color(col);
	draw_text(drawX, drawY, text);
}