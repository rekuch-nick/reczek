if(ww.canOvercharge){
	if(!ww.mpChargeFull){ image_index = 0; }
	draw_self();
	
	
	
	
	var x1 = x + 15;
	var x2 = x1 + ((ww.mpCharge / (ww.mmp * 10)) * 355);
	
	var col = c_yellow;
	if(ww.mpChargeFull){
		col = floor(ww.mpCharge / 15) % 2 == 1 ? c_yellow : c_white;
	}
	draw_set_color(col);
	draw_rectangle(x1, y + 110, x2, y + 120, false);
	
	//draw_text(x, y, ww.mpCharge)
	var x1 = x + 90
	draw_sprite_stretched(uimgMPGain, 0, x1, y+30, 40, 40);
	draw_sprite_stretched(uimgMPGain, 0, x1+80, y+30, 40, 40);
	draw_sprite_stretched(uimgMPGain, 0, x1+160, y+30, 40, 40);
}