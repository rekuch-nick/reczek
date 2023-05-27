

if(ww.state == "play"){
	
	var restX = 825 + (rest / restMax) * (1185 - 825);

	draw_set_color(c_gray);
	draw_rectangle(825, 420, restX, 470, false);

	if(rest == restMax){
		draw_set_color(c_black);
		draw_set_font(fntPlain);
		draw_text(835, 425, "Click the Dragon");
		draw_text(880, 445, "to wake it.");
	}

	if(level < 4){
		var ageX = 825 + (age / ageMax) * (1185 - 825);
		draw_set_color(c_olive);
		draw_rectangle(825, 475, ageX, 485, false);
	}
	
	
	
	
	draw_self();
	if(carried != noone){
		draw_sprite_stretched(carried, 0, x - 30, y - 60, 60, 60);
	}
	
	
	
	
}