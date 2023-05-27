if(ww.herbHeal){
	draw_self();
	
	draw_set_color(c_lime);
	draw_set_font(fntPlain);
	draw_text(x + 50, y + 70, "2 : 1");
	
	draw_sprite_stretched(uimgHeal, 0, x + 80, y + 10, 40, 40);
	draw_sprite_stretched(imgHerbs, 0, x + 10, y + 70, 30, 30);
}