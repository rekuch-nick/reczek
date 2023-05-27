if(ww.state != "play"){ return; }
if(!ww.eliteUpgrades){ return; }
if(mouse_x >= x && mouse_x <= x + sprite_width){
	if(mouse_y >= y && mouse_y <= y + sprite_height){
		ww.smallToolTip = "Click here to view your advanced upgrades.";
	}
}