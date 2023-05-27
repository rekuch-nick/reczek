if(ww.gemMercs){
	if(justPressed > 0){
		justPressed --;
		image_alpha = .5;
	} else {
		image_alpha = 1;
	}
	
	
	draw_self();
	
	draw_set_color(c_fuchsia);
	draw_set_font(fntPlain);
	draw_text(x + 50, y + 70, string(ww.goonLevel * price));
	
	draw_sprite_stretched(uimgGoonSpeed, 0, x + 80, y + 10, 40, 40);
	draw_sprite_stretched(imgGem, 0, x + 10, y + 70, 30, 30);
}