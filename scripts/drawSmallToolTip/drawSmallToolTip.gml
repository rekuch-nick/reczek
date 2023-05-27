function drawSmallToolTip() {

	var xx = mouse_x; var yy = mouse_y;

	if(coins > 0 && xx >= 10 && yy >= 10 && xx <= 200 && yy <= 50){
		smallToolTip = "Gain coins from beating enemy units.";
	}

	if(banners > 0 && xx >= 10 && yy >= 60 && xx <= 200 && yy <= 100){
		smallToolTip = "Gain banners from beating stages you have not beaten before.";
	}

	if(herbs > 0 && xx >= 10 && yy >= 110 && xx <= 200 && yy <= 150){
		smallToolTip = "Gain herbs from Herb Collector units.";
	}

	if(gems > 0 && xx >= 10 && yy >= 160 && xx <= 200 && yy <= 200){
		smallToolTip = "Gain gems from lining up 3 or more Gem Soldiers of the same element.";
	}

	if(stars > 0 && xx >= 10 && yy >= 210 && xx <= 200 && yy <= 250){
		smallToolTip = "Gain stars from slaying units with lightning strikes.";
	}

	if(xx > 820){
		if(yy >= 10 && yy <= 40){
			smallToolTip = "This bar indicates how many more monsters will attack in the current stage.";
		}
		if(yy >= 60 && yy <= 90){
			smallToolTip = "You lose some hope when allies fall, and refill when you enter a new stage. You cannot spawn new units while out of hope.";
		}
		if(yy >= 110 && yy <= 140 && mp > 0){
			smallToolTip = string(mp) + " / " + string(mmp) + " MP. Use it to activate any spells you have learned.";
		}
	}


















	var s = ww.smallToolTip;
	var x1 = 820;
	var y1 = 240;

	draw_set_color(c_white);
	draw_set_font(fntPlain);

	var line = "";
	while(s != ""){
		
		
		var c = string_char_at(s, 1);
		
		line += c;
		s = string_copy(s, 2, string_length(s) - 1);
		
		if(c == " "){
			if(string_length(line) > 12){
				draw_text(x1, y1, line);
				y1 += 22;
				line = "";
			}
		}
	}
	draw_text(x1, y1, line);


}
