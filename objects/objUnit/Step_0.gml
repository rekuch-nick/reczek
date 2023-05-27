


if(ww.state != "play"){ return; }

if(bearInFront && ww.bearForm){
	if(ySpot == 5 && sprite_index == imgHerbPicker){
		
		if(ww.epic[1]){
			sprite_index = imgBear2;
			might += 24;
			armor += 20;
		} else {
			sprite_index = imgBear;
			might += 16;
			armor += 16;
			//hp = clamp(hp + 20, 0, mhp);
		}
	}
	if(ySpot > 5 && sprite_index == imgBear){
		sprite_index = imgHerbPicker;
		might -= 16;
		armor -= 16;
	}
	if(ySpot > 5 && sprite_index == imgBear2){
		sprite_index = imgHerbPicker;
		might -= 24;
		armor -= 20;
	}
}

if(mouse_x > x && mouse_x < x + 69 && mouse_y > y && mouse_y < y + 69){
	//ww.mouseOverUnit = self;
	ww.mouseOverUnit = ww.map[xSpot, ySpot];
}

for(var loop=0; loop<ww.gameSpeed; loop ++){

	if(eldarShield > 0){ eldarShield --; }

	thinkCD --;
	if(sprite_index == imgBear2 && irandom_range(1, 30) ){ thinkCD --; }
	if(thinkCD < 1 && !selected){
		
		if(!frozen){
			if(hp < mhp && !foe && ww.heal > 0){
				hp = clamp(hp + ww.heal, 0, mhp);
			}
			if(hp < mhp && hp > 0){
				hp = clamp(hp + regen, 0, mhp);
			}
			if(isEleFighter && ww.eleFighterFastHeal){
				hp = clamp(hp + 2, 0, mhp);
			}
			
			if(sprite_index == imgBear2 && mhp < 2500){
				if(mhp < 2000){ mhp ++; }
				if(irandom_range(1, 20) == 1){ mhp ++; }
			}
		}
		
		
		thinkCD = thinkCDMax;
		if(ww.champ == ww.map[xSpot, ySpot]){ thinkCD /= 2; }
		if(ww.map[xSpot, ySpot].object_index == objPyro && ww.epic[3]){ thinkCD -= 5; }
		
		unitAction();
		
		
		
		
	}



	

	if(isBomb && ySpot == 4){ hp --; }





	
	xHome = 390 + (xSpot * 70);
	yHome = ySpot * 70;
	
	for(var n=0; n<3; n++){
		if(x < xHome){ x ++; }
		if(x > xHome){ x --; }
		if(y < yHome){ y ++; }
		if(y > yHome){ y --; }
	}
	
	if(abs(x - xHome) + abs(y - yHome) > 70){
		image_alpha = .5;
	} else {
		image_alpha = 1;
	}
	
	if(selected){
		var s = 8; //irandom_range(0, 10);
		x = xHome - (s / 2);
		y = yHome - (s / 2);
		scaleToSize(70 + s, 70 + s);
	}
	
	/*
	if(abs(x - xHome) < 5 && abs(y - yHome) < 5){
		if(isGem){
			if(xSpot > 0 && xSpot < 5){
				var left = ww.map[xSpot-1, ySpot];
				var right = ww.map[xSpot+1, ySpot];
				tryToMerge(left, right);
			}
			
			if(ySpot > 5 && ySpot < 9){
				var up = ww.map[xSpot, ySpot-1];
				var down = ww.map[xSpot, ySpot+1];
				tryToMerge(up, down);
			}
		}
	}
	*/
	
	if(xp > mxp){
		level ++;
		might += 2;
		mhp += 10;
		hp += 10;
		xp -= mxp;
		mxp = 90 + (level * 10);
		
		//TODO: put some effects
		
	}
	
	
	if(bearInFront && ww.bearForm && ySpot == 5){ poison = 0; }
	
	if(poison > 0){
		poison --;
		if(poison % 3 == 0){
			hp --;
		}
	}
	
	if(stun > 0){ stun --; }
	
	
	
	if(hp < 1){
		dragonSafe(xSpot, ySpot);
		
		if(isBomb){ amBomb(); }
		
		
		if(ww.selected == id){ ww.selected = noone; }
		
		
		if(!foe){
			ww.hope = clamp(ww.hope - hope, 0, ww.hopeMax);
			
			if(isEleFighter && ww.epic[0]){
				var n = 55 + ((level - 1) * 110);
				ww.xpBanked = clamp(ww.xpBanked + n, ww.xpBanked, ww.xpBankedMax);
			}
		}
		
		if(coins > 0){
			ww.coins += coins;
			for(var i=0; i<coins; i+=3){
				instance_create_depth(x + 35, y + 5, ww.EFF_LAYER, effCoin);
			}
		}
		
		ww.map[xSpot, ySpot] = noone;
		
		
		if(spawnSkelly && (ww.rage < 1 || !ww.rageStopsSkellys)){
			ww.map[xSpot, ySpot] = instance_create_depth(390 + (xSpot * 70), ySpot * 70, depth, objSkelly);
			ww.map[xSpot, ySpot].xSpot = xSpot;
			ww.map[xSpot, ySpot].ySpot = ySpot;
		}
		
		if(spawnSkelly0 && (ww.rage < 1 || !ww.rageStopsSkellys)){
			ww.map[xSpot, ySpot] = instance_create_depth(390 + (xSpot * 70), ySpot * 70, depth, objSkelly0);
			ww.map[xSpot, ySpot].xSpot = xSpot;
			ww.map[xSpot, ySpot].ySpot = ySpot;
		}
		
		
		ww.mouseOverUnit = noone;
		instance_destroy();
		break;
	}
}

if(selected){ 
	selectedTime ++;
	if(ww.canChamp && selectedTime >= 60){
		ww.champ = id;
	}
} else {
	selectedTime = 0;
}




