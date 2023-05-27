if(mouse_check_button_released(mb_left)){ releasedMouseSinceSelecting = true; }

if(state != "play"){ return; }

if(firstFrame){
	firstFrame = false;
	
	eggTank.hatchPhase = hatchPhase;
	eggTank.hatchCD = hatchCD;
	eggTank.hatchCDMax = hatchCDMax;
	
	if(drag_level > 0){
		var d = instance_create_depth(eggTank.x + 290, eggTank.y + 160, eggTank.depth - 2, objDragon);
		d.rest = drag_rest;
		d.restMax = drag_restMax;
		d.age = drag_age;
		d.ageMax = drag_ageMax;
		d.level = drag_level;
		
		
		if(d.level >= 2){ 
			d.flySprite = imgDrag2; d.sleepA = imgDragSleep2; d.sleepB = imgDragSleep2b; 
			d.yHome -= 5;
		}
		if(d.level >= 3){ 
			d.xHome += 5;
			d.flySprite = imgDrag3; d.sleepA = imgDragSleep3; d.sleepB = imgDragSleep3b; 
			d.yHome -= 5;
		}
		if(d.level >= 4){ 
			d.xHome -= 15;
			d.yHome -= 5;
			d.flySprite = imgDrag4; d.sleepA = imgDragSleep4; d.sleepB = imgDragSleep4b; 
			d.yHome -= 5;
		}
		d.sprite_index = d.sleepA;
		d.y = d.yHome; d.x = d.xHome;
		
		
	}
	
	setPowers();
	saveGame();
}



if(!audio_is_playing(bgmList[bgm]) && soundOn){
	bgm ++;
	if(bgm >= array_length_1d(bgmList)){ bgm = 0; }
	audio_play_sound(bgmList[bgm], 1, false);
}


tryToMerge();
for(var loop=0; loop<gameSpeed; loop ++){
	
	xpBankPayout();
	
	if(shield > 0){ shield --; }
	if(rage > 0){ rage --; }
	if(techPlus > 0){ techPlus --; }
	if(fear > 0){
		fear --;
		hope = clamp(hope - 1, 0, hopeMax);
	}


	if(hope > 0){
		troopCD += (goonCharge);
		if(troopCD >= troopCDMax){
			troopCD = 0;
			var b = newAllySpot();
			if(b != -1){
				var guy = instance_create_depth(390 + (b * 70), 700, -2000, goon);
				guy.xSpot = b; guy.ySpot = 9;
				ww.map[b, 9] = guy;
			} else {
				troopCD = troopCDMax - 60;
			}
		}
		
		
		if(spec != noone){
			specCD += 1;
			if(techPlus > 0){
				specCD += 4;
			}
			if(specCD >= specCDMax){
				specCD = 0;
				
				if(spec == objNo){
					
					for(var i=0; i<4; i++){
						instance_create_depth(specSelector.x + irandom_range(0, specSelector.sprite_width), 
								specSelector.y + irandom_range(0, specSelector.sprite_height), 
								EFF_LAYER, effCoin);
					}
					coins += 10;
					
					
				} else {
				
					var b = newAllySpot();
					if(b != -1){
						var guy = instance_create_depth(390 + (b * 70), 700, -2000, spec);
						guy.xSpot = b; guy.ySpot = 9;
						ww.map[b, 9] = guy;
					} else {
						specCD = specCDMax - 20;
					}
					
				}
			}
		}
		
		
		
	}
	
	if(mp == mmp && perk[9, 3] && techPlus < 1 && spec != noone){
		spendMP(techCost);
		techPlus = 30;
	}
	
	mp = clamp(mp + charge, 0, mmp);
	//mp = mmp; ////////////
	if(mpChargeFull){
		mp = clamp(mp + (charge * 25), 0, mmp);
		mpCharge -= 100000 / (30 * 60);
		if(mpCharge < 1){
			mpCharge = 0;
			mpChargeFull = false;
		}
	}
	
	
	stageCD --;
	if(stageCD < 1){
		stageSpawn();
	}
	
	if(stageHP < 1 && instance_number(objMob) == 0){
		nextStage();
	}
	
	
	
	
	if(canRainbow){
		if(rainbowCD > 0){
			rainbowCD --;
		} else {
			
			var r = clamp(irandom_range(0, ww.stars + 100), 0, 1000);
			
			if(r >= 100){
				rainbowCD = clamp( (30 * 300) - (ww.stars * 10), 30 * 30, 30 * 300);
				
				//var preSheep = 0;
				//with(objMob){ if(sprite_index == imgSheep){ preSheep ++; } }
				//var limit = 100 + (preSheep * 50);
				//var sheep = 0;
				//for(var i=0; i<r; i+= limit){
					rainbowSheep();
					if(irandom_range(0, ww.stars) > 250 && irandom_range(0, 1) == 1){
						rainbowSheep();
					}
					if(irandom_range(0, ww.stars) > 500 && irandom_range(0, 1) == 1){
						rainbowSheep();
					}
				//	sheep ++;
				//}
				//how_debug_message("r: " + string(r));
				//how_debug_message(string(sheep) + " sheep");
			} else {
				rainbowCD = 30;
			}
			
			
			
		}
	}
	
	
	
	if(ww.perk[11, 2]){
		var onb = 0;
		with(objUnit){
			onb = foe? onb + 1 : onb - 1;
		}
		if(onb > 0){
			eleSpawnCD --;
			if(eleSpawnCD < 1){
				var b = newAllySpot();
				if(b != -1){
					eleSpawnCD = eleSpawnCDMax;
					
					var r = irandom_range(1, 3);
					var t = objFireMan;
					if(r == 2){ t = objEarthMan; }
					if(r == 3){ t = objWaterMan; }
			
					var guy = instance_create_depth(390 + (b * 70), 700, -2000, t);
					guy.xSpot = b; guy.ySpot = 9;
					ww.map[b, 9] = guy;
					
				}
			}
		}
	}
	
}


if(keyboard_check_pressed(ord("1"))){
	if(canSkill1 && mp > lightningCost){
		casting = casting == 1 ? 0 : 1;
	}
}

if(keyboard_check(ord("2")) && shield < 1){
	if(canSkill2 && mp > (shieldCost)){
		spendMP(shieldCost);
		shield = 90;
	}
}

if(keyboard_check(ord("3")) && rage < 1){
	if(canSkill3 && mp > rageCost){
		spendMP(rageCost);
		rage = 90;
	}
}

if(keyboard_check_pressed(ord("5"))){
	if(canSkill5 && mp >= gemCost){
		var gem = castGem();
		if(gem){
			spendMP(gemCost);
		}
	}
}

if(keyboard_check_pressed(ord("4"))){
	if(canSkill4 && mp > healCost){
		casting = casting == 4 ? 0 : 4;
	}
}

if(keyboard_check_pressed(ord("6")) && perk[10, 3] && eggTank.hatchPhase == 6 && canSkill6 && mp >= (2000) ){
	var cando = false;
	with(objDragon){ cando = sleeping; }
	if(cando){
		casting = casting == 6 ? 0 : 6;
	}
}


resolveCasting();







if(eleAscend){
	with(objUnit){
		if(isEleFighter && level >= 20){
			
			dragonSafe(xSpot, ySpot);
			
			ww.mouseOverUnit = noone;
			var tt = objFireLord;
			if(element == "Earth"){ tt = objEarthLord; }
			if(element == "Water"){ tt = objWaterLord; }
			ww.map[xSpot, ySpot] = instance_create_depth(x, y, depth, tt);
			ww.map[xSpot, ySpot].xSpot = xSpot;
			ww.map[xSpot, ySpot].ySpot = ySpot;
			instance_destroy();
		}
	}
}



if(keyboard_check_pressed(ord("Q")) ){
	useGemSummon();
}

if(keyboard_check(ord("W")) ){
	useHerbHeal();
}


if(keyboard_check(vk_backspace)){
	if(keyboard_check(vk_control)){
		//nextStage();
	}
	
	if(keyboard_check(vk_shift)){
		//ww.epic[4] = true;
		setPowers();
	}
	
	
	if(keyboard_check(ord("M"))){
		//coins += 100000;
		//banners += 30;
		//herbs += 100000;
		//gems += 10000;
		//stars += 10000;
	}
	
	
}




if(hope <= 0){
	if(epic[4] && !hopeAngelSummoned){
		
		var b = newAllySpot();
		if(b != -1){
			var guy = instance_create_depth(390 + (b * 70), 700, -2000, objAngel);
			guy.xSpot = b; guy.ySpot = 9;
			ww.map[b, 9] = guy;
			hopeAngelSummoned = true;
		}
		
	}
	
	
	var n = 0;
	with(objUnit){ if(!foe){ n ++; } }
	if(n == 0){
		stage = clamp(stage - 2, 0, stage);
		justLost = true;
		with(objUnit){
			instance_destroy();
		}
		ww.mouseOverUnit = noone;
		for(var a=0; a<6; a++){
			for(var b=0; b<10; b++){
				ww.map[a, b] = noone;
			}
		}
		nextStage();
	}
}

