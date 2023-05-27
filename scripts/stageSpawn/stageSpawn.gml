function stageSpawn() {
	stageCD = 120;


	if(stageHP > 0){
	
	
	
	
		var roll = irandom_range(0, ds_list_size(ww.mobList) - 1);
	
		var t = ds_list_find_value(ww.mobList, roll);
	
		var a = newFoeSpot();
		if(a != -1){
		
		
			var boss = false;
			if(ww.early != noone && irandom_range(1, 3) == 1){ t = ww.early; ww.early = noone; boss = true; }
			if(ww.stageHP / ww.stageHPMax < .6 && ww.mid != noone){ t = ww.mid; ww.mid = noone; boss = true; }
			if(ww.stageHP / ww.stageHPMax < .2 && ww.late != noone){ t = ww.late; ww.late = noone; boss = true; }
		
		
		
			var mob = instance_create_depth(390 + (a * 70), -70, -2000, t);
			mob.xSpot = a; mob.ySpot = 0;
			if(ww.stage >= 100){ 
				mob.dice += floor(ww.stage - 90);
			}
			if(ww.stage >= 80){ 
				mob.hp *= 2; mob.mhp *= 2; 
				mob.might = floor(mob.might * 1.25); 
				mob.dice = floor(mob.dice * 1.25);
			}
			
			
			/// set cd / cost
			var cost = 3; var cd = 150;
			if(t == objCreep0){ cost = 2;}
			if(t == objCreep0 && ww.stage > 6){ cd = 15; }
			if(t == objCreep){ cost = 3; }
			if(t == objBubble){ cost = 4; }
			if(t == objBramble){ cost = 4; }
			if(t == objCandle){ cost = 4; }
		
			if(t == objCreep2){ cost = 5; }
			if(t == objShadow){ cost = 5; }
			if(t == objOrc){ cost = 5; }
		
			if(t == objSwarmling){ cd = 15; cost = 2; }
			if(t == objFrogman){ cost = 6; }
			if(t == objNinja){ cost = 6; }
		
			if(t == objLavaCreep){ cost = 7; }
			if(t == objMagKnight){ cost = 7; }
			if(t == objSnowman){ cost = 7; }
			if(t == objEnt){ cost = 7; }
		
			if(t == objSkullCaster){ cost = 8; }
			if(t == objFrostCaster){ cost = 8; }
			if(t == objPoxCaster){ cost = 8; }
			if(t == objFlame){ cost = 9; }
			if(t == objShadow2){ cost = 9; }
			if(t == objMagKnight2){ cost = 9; }
		
			if(t == objCreep3){ cost = 10; }
			if(t == objFrogmanMage){ cost = 10; }
			if(t == objBombCreep){ cost = 10; }
			if(t == objShadow3){ cost = 10; }
		
			if(t == objFishTank){ cost = 11; }
			if(t == objThorn){ cost = 11; }
			if(t == objImp){ cost = 11; }
		
			if(t == objFrogman2){ cost = 12; }
			if(t == objShadow4){ cost = 12; }
			if(t == objFrogmanMage2){ cost = 12; }
		
			if(t == objShadow5){ cost = 13; }
			if(t == objCreep4){ cost = 13; }
			if(t == objMagKnight3){ cost = 13; }
		
			if(t == objBrute){ cost = 14; }
			if(t == objKing){ cost = 14; }
			if(t == objFireElemental){ cost = 14; }
			if(t == objEarthElemental){ cost = 14; }
			if(t == objWaterElemental){ cost = 14; }
			if(t == objFearCaster){ cost = 14; }
			if(t == objDruid){ cost = 14; }
		
			if(t == objMagus){ cost = 15; }
			if(t == objCreep4b){ cost = 15; }
		
			if(t == objPoxCaster2){ cost = 16; }
			if(t == objSkullCaster2){ cost = 16; }
			if(t == objFrostCaster2){ cost = 16; }
			if(t == objMagus2){ cost = 16; }
		
		
			
		
		
			if(boss){
				mob.cannotBeSheep = true;
				cost = 0;
			}
		
			ww.map[a, 0] = mob;
			stageHP = clamp(stageHP - cost, 0, stageHPMax);
			ww.stageCD = cd;
		}
	
	}



	// inital rush
	var rushPercent = .8;
	if(stageHP / stageHPMax > rushPercent && (instance_number(objMob) < (instance_number(objUnit) / 2))){
		stageCD = 10;
	}



}
