
if(mouse_x >= x && mouse_x <= x + sprite_width){
	if(mouse_y >= y && mouse_y <= y + sprite_height){
		
		if(!mouse_check_button(mb_left)){
			heldFor = 0;
		}
		
		
		ww.mouseoverText = "Each level of bonus will provide +10% to HP and Damage for all newly made units. Each level is more expensive than the last.";
		
		
		
	}
}