/// @description Draw text and box
var halfWidth = textWidth * 0.5;

// Draw the box
draw_set_color(c_black);
draw_set_alpha(0.75);

// Compute coordinates of the text bubble
var topLeftX = x - halfWidth - margin;
var topLeftY = y - textHeight - (margin*2);
var bottomRightX = x + halfWidth + margin;
var bottomRightY = y;

// Fix issue #1 : 
// Check if the text bubble may be cropped by the screen border
var offsetX = 0;
var offsetY = 0;
if (topLeftX < cameraObject.shakeBuffer) {
	// Case 1 : text is cropped on the left
	offsetX = cameraObject.shakeBuffer - topLeftX;
	topLeftX += offsetX;
	bottomRightX += offsetX;
} else if (bottomRightX > room_width - cameraObject.shakeBuffer) {
	// Case 2 : text is cropped on the right
	offsetX = -(bottomRightX - (room_width - cameraObject.shakeBuffer) + 2);
	topLeftX += offsetX;
	bottomRightX += offsetX;
}
if (topLeftY < cameraObject.shakeBuffer) {
	// Case 3 : text is cropped on the top
	offsetY = cameraObject.shakeBuffer - topLeftY;
	topLeftY += offsetY;
	bottomRightY += offsetY;
}
// Case 4 : text is cropped on the bottom : can never happen

draw_roundrect_ext(
	topLeftX,
	topLeftY,
	bottomRightX,
	bottomRightY,
	BUBBLE_RADIUS,
	BUBBLE_RADIUS,
	false
);
draw_sprite(textMarkerSprite,0,x,y);
draw_set_alpha(1);

// Draw the text
drawSetText(c_white, signPostFont, fa_center, fa_top);
draw_text(x + offsetX, y - textHeight - margin + offsetY, currentText);
