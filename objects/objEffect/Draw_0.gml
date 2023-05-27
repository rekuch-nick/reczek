
draw_self();

if(text != ""){
	draw_set_color(textColor);
	var a = x;
	var b = y;
	
	draw_set_font(fntPlain);
	draw_text(a, b, text);
}