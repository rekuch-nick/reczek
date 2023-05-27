if(ww.state != "play"){ return; }

ww.gameSpeed ++;
if(ww.gameSpeed > 5){ ww.gameSpeed = 1; }

if(keyboard_check(vk_control)){
	ww.gameSpeed = 30;
}

if(keyboard_check(vk_shift)){
	ww.gameSpeed = 10;
}

if(keyboard_check(vk_alt)){
	ww.gameSpeed = 99;
}