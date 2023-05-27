if(costType == "coins"){
	canBuy = ww.coins >= cost;
}
if(costType == "banners"){
	canBuy = ww.banners >= cost;
}
if(costType == "herbs"){
	canBuy = ww.herbs >= cost;
}
if(costType == "gems"){
	canBuy = ww.gems >= cost;
}
if(costType == "stars"){
	canBuy = ww.stars >= cost;
}
if(!can){ return; }
if(mouse_x >= x && mouse_x <= x + sprite_width){
	if(mouse_y >= y && mouse_y <= y + sprite_height){
		ww.gotUpgrade = ww.perk[a, b];
		if(ww.perk[a, b]){ canBuy = true; }
		
		ww.mouseoverName = name;
		ww.mouseOverNameColor = canBuy ? nameColor : c_dkgray;
		
		ww.mouseoverText = text;
		ww.mouseOverTextColor = canBuy ? textColor : c_dkgray;
		
		if(costType == "coins"){
			ww.mouseoverNote = string(cost) + " coins " + "(You have " + string(ww.coins) + ")";
			ww.mouseoverNoteColor = c_yellow;
		}
		if(costType == "banners"){
			ww.mouseoverNote = string(cost) + " banners " + "(You have " + string(ww.banners) + ")";
			ww.mouseoverNoteColor = c_red;
		}
		if(costType == "herbs"){
			ww.mouseoverNote = string(cost) + " herbs " + "(You have " + string(ww.herbs) + ")";
			ww.mouseoverNoteColor = c_green;
		}
		if(costType == "gems"){
			ww.mouseoverNote = string(cost) + " gems " + "(You have " + string(ww.gems) + ")";
			ww.mouseoverNoteColor = c_purple;
		}
		if(costType == "stars"){
			ww.mouseoverNote = string(cost) + " stars " + "(You have " + string(ww.stars) + ")";
			ww.mouseoverNoteColor = c_gray;
		}
		
		
	}
}