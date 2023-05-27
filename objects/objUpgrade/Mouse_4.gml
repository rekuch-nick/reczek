


if(can && canBuy && !ww.perk[xSpot, ySpot]){
	ww.perk[xSpot, ySpot] = true;
	if(costType == "coins"){ ww.coins -= cost; }
	if(costType == "banners"){ ww.banners -= cost; }
	if(costType == "herbs"){ ww.herbs -= cost; }
	if(costType == "gems"){ ww.gems -= cost; }
	if(costType == "stars"){ ww.stars -= cost; }
	if(ww.spec == noone){
		if(xSpot == 3 && ySpot == 4){ ww.spec = objFireMan; specSelector.pic = imgFireMan; ww.specCDMax = 30 * 45; }
		if(xSpot == 4 && ySpot == 4){ ww.spec = objEarthMan; specSelector.pic = imgEarthMan; ww.specCDMax = 30 * 45; }
		if(xSpot == 5 && ySpot == 4){ ww.spec = objWaterMan; specSelector.pic = imgWaterMan; ww.specCDMax = 30 * 45; }
		if(xSpot == 6 && ySpot == 4){ ww.spec = objFancyMan; specSelector.pic = imgFancyMan; ww.specCDMax = 30 * 45; }
		
		
	}
	
	if(xSpot == 2 && ySpot == 1){
		with(objFancyMan){ fancy = 1; }
	}
	
	if(xSpot == 0 && ySpot == 3){ ww.goon = objGoon2; goonSelector.pic = imgGoon2; ww.troopCDMax = ww.troopCDBaseMax * 2; }
	if(xSpot == 0 && ySpot == 2){ ww.goon = objGoon3; goonSelector.pic = imgGoon3; ww.troopCDMax = ww.troopCDBaseMax * 4; }
	if(xSpot == 0 && ySpot == 1){ ww.goon = objGoon4; goonSelector.pic = imgGoon4; ww.troopCDMax = ww.troopCDBaseMax * 8; }
	if(xSpot == 0 && ySpot == 0){ ww.goon = objGoon5; goonSelector.pic = imgGoon5; ww.troopCDMax = ww.troopCDBaseMax * 16; }
	
	if(xSpot == 3 && ySpot == 2){
		with(objUnit){ if(!foe && isEleFighter){
			mhp += 50; might += 2; dice += 1;
		}}
	}
	if(xSpot == 4 && ySpot == 2){
		with(objUnit){ if(!foe && isEleFighter){
			mhp += 50; might += 2; dice += 1;
		}}
	}
	if(xSpot == 5 && ySpot == 2){
		with(objUnit){ if(!foe && isEleFighter){
			mhp += 50; might += 2; dice += 1;
		}}
	}
	if(xSpot == 11 && ySpot == 2){
		with(objUnit){ if(!foe && isEleFighter){
			mhp += 50; might += 2; dice += 1;
		}}
	}
	
	if(xSpot == 5 && ySpot == 0){
		with(objUnit){ if(!foe){ 
			armor += 4;
		}}
	}
}