/*
if(ww.state == "play" && ww.gemMercs){
	if(mouse_x >= x && mouse_x <= x + sprite_width){
		if(mouse_y >= y && mouse_y <= y + sprite_height){
			
			ww.mouseoverName = "Hire Soldiers";
			ww.mouseoverText = "Pay gems to receive up to 5 immediate reinforcements. You'll receive a discount if they don't all show up.";
		
		}
	}
}
*/

if(ww.state != "play"){ return; }
if(!ww.gemMercs){ return; }
if(mouse_x >= x && mouse_x <= x + sprite_width){
	if(mouse_y >= y && mouse_y <= y + sprite_height){
		ww.smallToolTip = "Click here or press Q to hire Soliders for gems.";
	}
}