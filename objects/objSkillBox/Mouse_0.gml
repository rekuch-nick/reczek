






if(pic == uimgSkill2 && can && ww.shield < 1){
	if(ww.canSkill2 && ww.mp > (ww.shieldCost)){
		spendMP(ww.shieldCost);
		ww.shield = 90;
	}
}

if(pic == uimgSkill3 && can && ww.rage < 1){
	if(ww.canSkill3 && ww.mp > ww.rageCost){
		spendMP(ww.rageCost);
		ww.rage = 90;
	}
}



