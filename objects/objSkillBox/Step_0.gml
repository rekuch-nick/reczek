if(ww.state != "play"){ return; }
if(!can){ return; }
if(mouse_x >= x && mouse_x <= x + sprite_width){
	if(mouse_y >= y && mouse_y <= y + sprite_height){
		
		if(pic == uimgSkill1){
			ww.smallToolTip = "Click here or press 1 then click a space and lightning will strike.";
		}
		
		if(pic == uimgSkill2){
			ww.smallToolTip = "Click here or hold 2 to reduce the damage your front line takes by 50%.";
		}
		
		if(pic == uimgSkill3){
			ww.smallToolTip = "Click here or hold 3 to double the damage your units do.";
		}
		
		if(pic == uimgSkill4){
			ww.smallToolTip = "Click here or press 4 then click a unit to heal it.";
		}
		
		if(pic == uimgSkill5){
			ww.smallToolTip = "Click here or press 5 to turn your solider units into gem units.";
		}
		
		if(pic == uimgRetire){
			ww.smallToolTip = "Click here or press 6 then click an ally unit to retire it. (Gain some Hope and Dragon XP)";
		}
		
		
		
		
	}
}