draw_self();



if(skill != -1){
	
	
	
	draw_set_font(fntPlain);
	draw_set_color(c_white);
	
	if(skill == 0){
		draw_text(x + sprite_width + 10, y + 20, "Elemental Fighters Bank XP on death");	
	}
	
	if(skill == 1){
		draw_text(x + sprite_width + 10, y + 20, "Herb Collectors in Bear Form gain max");	
		draw_text(x + sprite_width + 10, y + 40, "HP over time.");	
	}
	
	if(skill == 2){
		draw_text(x + sprite_width + 10, y + 20, "Chemists heal nearby allies.");	
	}
	
	if(skill == 3){
		draw_text(x + sprite_width + 10, y + 20, "Fire Jugglers can throw more fire");	
		draw_text(x + sprite_width + 10, y + 40, "more quickly.");	
	}
	if(skill == 4){
		draw_text(x + sprite_width + 10, y + 20, "When all Hope is lost, an Angel will");
		draw_text(x + sprite_width + 10, y + 40, "appear to help you.");
	}
	
	
}

