if(pic == uimgSkill1 && can){
	show_debug_message(123)
	
	if(ww.canSkill1 && ww.mp > ww.lightningCost){
		ww.casting = ww.casting == 1 ? 0 : 1;
	}
}


if(pic == uimgSkill4 && can){
	if(ww.canSkill4 && ww.mp > ww.healCost){
		ww.casting = ww.casting == 4 ? 0 : 4;
	}
}

if(pic == uimgSkill5 && can){
	if(ww.canSkill5 && ww.mp >= ww.gemCost){
		var gem = castGem();
		if(gem){
			spendMP(ww.gemCost);
		}
	}
}

if(pic == uimgRetire && ww.perk[10, 3] && eggTank.hatchPhase == 6 && ww.canSkill6 && ww.mp >= 2000){
//if(keyboard_check_pressed(ord("6")) && perk[10, 3] && eggTank.hatchPhase == 6 && canSkill6 && mp >= (2000) ){
	var cando = false;
	with(objDragon){ cando = sleeping; }
	if(cando){
		ww.casting = ww.casting == 6 ? 0 : 6;
	}
}
