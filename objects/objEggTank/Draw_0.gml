if(ww.perk[10, 3]){
	draw_self();
	
	
	if(hatchPhase < 6){
	
		var x1 = x + 10;
		var y1 = y + 20;
		var y2 = y1 + 15;
		var w = 360;
	
		var x2 = x1 + ((hatchCD / hatchCDMax) * w)
	
		draw_set_color(c_gray);
	
		draw_rectangle(x1, y1, x2, y2, false);
	
	
		//draw_text(x + 20, y2 + 30, hatchPhase);
		
	}
	
	
	
	
	
}