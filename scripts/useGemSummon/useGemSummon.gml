function useGemSummon() {
	if(ww.gemMercs){

	if(ww.gems >= (ww.goonLevel * mercButton.price)){
		var hired = 0;
		var t = objGoon;
		if(ww.goonLevel >= 2){ t = objGoon2; }
		if(ww.goonLevel >= 3){ t = objGoon3; }
		if(ww.goonLevel >= 4){ t = objGoon4; }
		if(ww.goonLevel >= 5){ t = objGoon5; }
		var skip = irandom_range(0, 5);
		for(var a=0; a<5; a++){
			if(a == skip){ continue; }
			if(ww.map[a, 9] == noone){
				hired ++;
				var guy = instance_create_depth(390 + (a * 70), 700, -2000, t);
				guy.xSpot = a; guy.ySpot = 9;
				ww.map[a, 9] = guy;
			} else {
				skip = 12;
			}
		}
	
		mercButton.justPressed = 10;
		var cost = ww.goonLevel * floor(mercButton.price / 5) * hired;
		ww.gems -= cost;
	}

	}


}
