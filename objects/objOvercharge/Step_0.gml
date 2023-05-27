if(ww.state != "play"){ return; }
if(!ww.canOvercharge){ return; }
if(mouse_x >= x && mouse_x <= x + sprite_width){
	if(mouse_y >= y && mouse_y <= y + sprite_height){
		ww.smallToolTip = "Spend MP will build up here. When this gauge is full, you'll have unlimited MP for a short time.";
	}
}