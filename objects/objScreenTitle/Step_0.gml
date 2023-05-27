if(ww.state != "title"){ return; }

option = 0;
if(mouse_y > yo1 && mouse_y < yo1 + yoh){
	option = 1;
}
if(mouse_y > yo2 && mouse_y < yo2 + yoh){
	option = 2;
}
if(mouse_y > yo3 && mouse_y < yo3 + yoh){
	option = 3;
}

if(option != 3 || !mouse_check_button(mb_left)) { resetCD = 0; }

if(keyboard_check(vk_enter)){ option = 1; }

if(mouse_check_button(mb_left) || keyboard_check(vk_enter)){
	
	if(option == 1){
		setup(0);
		ww.state = "play";
		instance_destroy();
	}
	
	if(option == 2){
		ww.state = "story";
		instance_create_depth(0, 0, depth-1, objScreenStory);
	}
	
	if(option == 3 && !hasReset){
		resetCD ++;
		
		if(resetCD > resetCDMax){
			resetGame();
			hasReset = true;
			resetCD = 0;
		}
	}
}