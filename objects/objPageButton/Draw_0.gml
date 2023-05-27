draw_self();

draw_set_font(fntHuge);
draw_set_color(c_yellow);

if(dir == 1){
	draw_text(x + 15, y + 15, ">");
}

if(dir == -1){
	draw_text(x + 10, y + 10, "<");
}