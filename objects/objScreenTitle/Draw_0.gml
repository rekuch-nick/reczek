draw_self();

draw_set_font(fntHuge);
draw_set_color(c_yellow);
//draw_text(50, 50, "Dagmar's Defense");


draw_text_transformed_colour(25, 20, "The Rise of", .5, .5, 0, c_yellow, c_yellow, c_red, c_red, 1);

draw_set_halign(fa_center);

draw_text_transformed_colour(600, 70, "Reczek", 3.5, 3.4, 0, c_red, c_red, c_yellow, c_yellow, random_range(.8, 1));








draw_set_font(fntPlain);
draw_set_color(c_white);


var x1 = 600; var y1 = 450;
if(option == 1){
	draw_set_alpha(.4);
	draw_set_color(c_yellow);
	draw_rectangle(0, yo1, 1200, yo1 + yoh, false);
	draw_set_alpha(1);
	draw_set_font(fntBig);
	//y1 -= 10;
}

var s = "Start Adventure";
if(ww.stage > 1){ s += ": " + string(ww.stage); }
draw_text(x1, y1, s);

draw_set_color(c_white);
draw_set_font(fntPlain);
y1 = 550;
if(option == 2){
	draw_set_alpha(.4);
	draw_set_color(c_yellow);
	draw_rectangle(0, yo2, 1200, yo2 + yoh, false);
	draw_set_alpha(1);
	
	draw_set_font(fntBig);
	//y1 -= 10;
}
draw_text(x1, y1, "Backstory");

draw_set_color(c_white);
draw_set_font(fntPlain);
y1 = 650;
if(option == 3){
	draw_set_alpha(.4);
	draw_set_color(c_yellow);
	draw_rectangle(0, yo3, 1200, yo3 + yoh, false);
	draw_set_alpha(1);
	
	draw_set_font(fntBig);
	//y1 -= 10;
	
	if(resetCD > 0){
		var xx1 = 300; var xx2 = 900;
		var yy1 = 600; var yy2 = 670;
		
		var w1 = 600 * (resetCD / resetCDMax);
		draw_set_color(c_black);
		draw_rectangle(xx1, yy1, xx2, yy2, false);
		draw_set_color(c_yellow);
		draw_rectangle(xx1, yy1, xx1 + w1, yy2, false);
		
		draw_set_color(c_black);
	}
	
	
	
}
draw_text(x1, y1, "Reset Data");


draw_set_halign(fa_left);

draw_sprite_stretched(imgBlackKnight, 0, 600 - 35, 300, 70, 70);