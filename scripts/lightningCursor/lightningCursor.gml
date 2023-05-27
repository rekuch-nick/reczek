function lightningCursor(argument0, argument1) {
	var a = argument0;
	var b = argument1;

	if(inBounds(a, b)){	
		
		draw_set_alpha(.5);
		draw_set_color(c_yellow);
		var x1 = 390 + (a * 70);
		var y1 = (b * 70);
		draw_rectangle(x1, y1, x1 + 70, y1 + 70, false);
		draw_set_alpha(1);
	}


}
