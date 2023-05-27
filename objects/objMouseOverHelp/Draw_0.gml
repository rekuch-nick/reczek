/// mouseover text
if(ww.mouseoverText != "" && !hide){
	var y1 = mouse_y < 350 ? 400 : 50;
	var y2 = y1 + 250;
	draw_set_color(c_black);
	draw_rectangle(50, y1, 1150, y2, false);
	
	draw_set_font(fntBig);
	draw_set_color(ww.mouseOverNameColor);
	draw_text(60, y1 + 10, ww.mouseoverName);
	
	draw_set_font(fntPlain);
	draw_set_color(ww.mouseoverNoteColor);
	draw_text(60, y1 + 50, ww.mouseoverNote);
	
	draw_set_color(ww.mouseOverTextColor);
	var s = ww.mouseoverText;
	
	var yPrint = y1 + 90;
	
	var line = "";
	while(s != ""){
		
		
		var c = string_char_at(s, 1);
		
		line += c;
		s = string_copy(s, 2, string_length(s) - 1);
		
		if(c == " "){
			if(string_length(line) > 40){
				draw_text(60, yPrint, line);
				yPrint += 22;
				line = "";
			}
		}
	}
	draw_text(60, yPrint, line);
	
	
	//draw_text(60, y1 + 90, ww.mouseoverText);
	if(ww.gotUpgrade){
		draw_set_color(c_green);
		draw_rectangle(50, y1, 1150, y1 + 5, false);
	}
}




hide = false;
ww.mouseoverText = "";
ww.mouseOverTextColor = c_white;
ww.mouseoverNote = "";
ww.mouseoverNoteColor = c_white;
ww.mouseoverName = "";
ww.mouseOverNameColor = c_white;
ww.gotUpgrade = false;