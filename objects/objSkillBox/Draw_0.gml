if(can){
	draw_self();
	
	var a = ww.mp >= cost ? 1 : .4;	
	draw_set_alpha(a);
	draw_sprite_stretched(pic, 0, x + 5, y + 10, 50, 60);
	
	draw_set_alpha(1);
}