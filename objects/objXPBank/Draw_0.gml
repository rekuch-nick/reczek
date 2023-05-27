if(ww.state != "play"){ return; }
if(!ww.epic[0]){ return; }

draw_self();
draw_set_color(c_orange);
draw_set_font(fntPlain);
draw_text(x + 10, y + sprite_height - 30, "[XP]");

if(mouse_x >= x && mouse_x <= x + sprite_width){
	if(mouse_y >= y && mouse_y <= y + sprite_height){
		ww.smallToolTip = "When a unit with XP is slain, some of it will be banked here and slowly doled out to your other XP capable units.";
	}
}

if(ww.xpBanked > 0){
	var x1 = x + 5;
	var x2 = x + sprite_width - 5;
	var y1 = y + sprite_height - 45;
	var y2 = y + 5;
	
	var h = abs(y1 - y2) * (1 - (ww.xpBanked / ww.xpBankedMax));
	
	draw_rectangle(x1, y2 + h, x2, y1, false);
}