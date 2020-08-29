// SOURCE : http://www.davetech.co.uk/gamemakercircularhealthbars
// @desc draw a pie
function drawPie(posX, posY, value, maxValue, color, radius, alpha) {
	if (value > 0) { // no point even running if there is nothing to display (also stops /0
	    var i, len, tx, ty, val;
    
	    var numberofsections = 60 // there is no draw_get_circle_precision() else I would use that here
	    var sizeofsection = 360 / numberofsections
    
	    val = (value / maxValue) * numberofsections 
    
	    if (val > 1) { // HTML5 version doesnt like triangle with only 2 sides 
    
	        draw_set_colour(color);
	        draw_set_alpha(alpha);
        
	        draw_primitive_begin(pr_trianglefan);
	        draw_vertex(posX, posY);
        
	        for(i = 0 ; i <= val ; i++) {
	            len = (i * sizeofsection) + ANGLE.UP; // the 90 here is the starting angle
	            tx = lengthdir_x(radius, len);
	            ty = lengthdir_y(radius, len);
	            draw_vertex(posX + tx, posY + ty);
	        }
	        draw_primitive_end();
        
	    }
	    draw_set_alpha(1);
	}
}