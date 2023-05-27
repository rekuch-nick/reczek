function nextStage() {


	ww.fear = 0;
	ww.hopeAngelSummoned = false;
	ww.eldarSummoned = false;
	ww.selfSummoned = false;

	ww.stage ++;




	if(!ww.justLost){
	
		if(ww.stage == 10 && ww.stageMax == 9){
			ww.popupPage = 0;
			var s = instance_create_depth(0, 0, 0, objScreenPopup);
			s.pMin = 0; s.pMax = 8; s.eOn = s.pMax;
			ww.state = "popup";
		}
	
	
	
		if(ww.stage == 20 && ww.stageMax == 19){
			ww.popupPage = 0;
			var s = instance_create_depth(0, 0, 0, objScreenPopup);
			s.pMin = 10; s.pMax = 18; s.eOn = s.pMax;
			ww.state = "popup";
		}
	
	
		if(ww.stage == 30 && ww.stageMax == 29){
			ww.popupPage = 0;
			var s = instance_create_depth(0, 0, 0, objScreenPopup);
			s.pMin = 20; s.pMax = 26; s.eOn = s.pMax;
			s.setUpgrades = true;
			ww.state = "popup";
		}
	
		if(ww.stage == 40 && ww.stageMax == 39){
			ww.popupPage = 0;
			var s = instance_create_depth(0, 0, 0, objScreenPopup);
			s.pMin = 28; s.pMax = 32; s.eOn = s.pMax;
			s.setUpgrades = true;
			ww.state = "popup";
		}
	
		if(ww.stage == 50 && ww.stageMax == 49){
			ww.popupPage = 0;
			var s = instance_create_depth(0, 0, 0, objScreenPopup);
			s.pMin = 34; s.pMax = 40; s.eOn = s.pMax;
			s.setUpgrades = true;
			ww.state = "popup";
		}
	
		if(ww.stage == 60 && ww.stageMax == 59){
			ww.popupPage = 0;
			var s = instance_create_depth(0, 0, 0, objScreenPopup);
			s.pMin = 42; s.pMax = 47; s.eOn = s.pMax;
			s.setUpgrades = true;
			ww.state = "popup";
		}
	
		if(ww.stage == 70 && ww.stageMax == 69){
			ww.popupPage = 0;
			var s = instance_create_depth(0, 0, 0, objScreenPopup);
			s.pMin = 49; s.pMax = 52; s.eOn = s.pMax;
			s.setUpgrades = true;
			ww.state = "popup";
		}
	
		if(ww.stage == 80 && ww.stageMax == 79){
			ww.popupPage = 0;
			var s = instance_create_depth(0, 0, 0, objScreenPopup);
			s.pMin = 54; s.pMax = 59; s.eOn = s.pMax;
			ww.state = "popup";
		}
	
		if(ww.stage == 101 && ww.stageMax == 100){
			ww.popupPage = 0;
			var s = instance_create_depth(0, 0, 0, objScreenPopup);
			s.pMin = 61; s.pMax = 65; s.eOn = s.pMax;
			ww.state = "popup";
		}
	
	}









	if(ww.stage > ww.stageMax){
		ww.stageMax ++;
		ww.banners ++;
	}

	ww.stageHPMax = 100 + (ww.stage * 5);

	ww.stageHP = ww.stageHPMax;
	ww.hope = ww.hopeMax;

	var s = instance_create_depth(530, 600, ww.EFF_LAYER - 1, objEffect);
	s.time = 330;
	s.flicker = true;
	s.text = "STAGE " + string(ww.stage);
	s.ys = -1;
	s.grav = -.01;

	
	
	
	
	
	ds_list_destroy(ww.mobList);
	ww.mobList = ds_list_create();
	ww.early = noone; ww.mid = noone; ww.late = noone;
	
		var n = ww.stage;
	
		if(n == 2){ ww.early = noone; ww.mid = objBramble; ww.late = noone; }
		if(n == 4){ ww.early = noone; ww.mid = objCreep2; ww.late = objCreep2; }
		if(n == 17){ ww.early = objPoxCaster; ww.mid = objPoxCaster; ww.late = objPoxCaster; }
		if(n == 19){ ww.early = objFrostCaster; ww.mid = objFrostCaster; ww.late = objFrostCaster; }
		if(n == 28){ ww.early = objBombCreep; ww.mid = objBombCreep; ww.late = objBombCreep; }
		if(n == 30){ ww.early = objSkullCaster2; ww.mid = noone; ww.late = objSkullCaster2; }
	
		if(n == 7){
			ds_list_add(ww.mobList, objCreep);
			ds_list_add(ww.mobList, objCreep);
			ds_list_add(ww.mobList, objNinja);
		
		} else if (n == 12){
			ds_list_add(ww.mobList, objCreep);
			ds_list_add(ww.mobList, objCreep2);
			ww.early = objSkullCaster; ww.mid = objSkullCaster; ww.late = objSkullCaster;
		
		} else if (n == 20){
			ds_list_add(ww.mobList, objBubble);
			ds_list_add(ww.mobList, objCreep);
			ds_list_add(ww.mobList, objCreep2);
			ds_list_add(ww.mobList, objMagKnight);
			ww.early = objPoxCaster2; ww.mid = noone; ww.late = objPoxCaster2;
		
		} else if (n == 25){
			ds_list_add(ww.mobList, objOrc);
		
		} else if (n == 29){
			ds_list_add(ww.mobList, objShadow);
			ds_list_add(ww.mobList, objShadow);
			ds_list_add(ww.mobList, objCandle);
		
		
		} else {
		
			var nn = n;
			//if(n > 7){ nn --; }
			//if(n > 12){ nn --; }
			//if(n > 20){ nn --; }
		
		
			var rMax = floor((nn + 1) / 3);
			if(n >= 17){ rMax ++; }
			if(n >= 23){ rMax ++; }
			var rMin = rMax - ceil(nn / 4);
			if(rMin < 0){ rMin = 0; }
			if(rMax > 23){ rMax = 23; }
			for(var i=rMin; i<=rMax; i++){
				if(i == 0){ ds_list_add(ww.mobList, objCreep0); } 
				if(i == 1){ ds_list_add(ww.mobList, objCreep); } //2
				if(i == 2){ ds_list_add(ww.mobList, objBramble); } //5
				if(i == 3){ ds_list_add(ww.mobList, objCreep2); } //8
				if(i == 4){ ds_list_add(ww.mobList, objShadow); } //11
				if(i == 5){ ds_list_add(ww.mobList, objOrc); } //14
				if(i == 6){ 
					ds_list_add(ww.mobList, objSwarmling); //17
					ds_list_add(ww.mobList, objSwarmling); 
					ds_list_add(ww.mobList, objSwarmling); 
				} // (2)
				if(i == 7){ ds_list_add(ww.mobList, objFrogman); } //17
				if(i == 8){ ds_list_add(ww.mobList, objLavaCreep); } //20
				//if(i == 9){ ds_list_add(ww.mobList, objMagKnight); } //
				if(i == 9){ ds_list_add(ww.mobList, objSnowman); } //23
				if(i == 10){ ds_list_add(ww.mobList, objEnt); } //
				if(i == 11){ ds_list_add(ww.mobList, objShadow2); } //26
				//if(i == 13){ ds_list_add(ww.mobList, objMagKnight2); }
				if(i == 12){ ds_list_add(ww.mobList, objCreep3); } //29
				if(i == 13){ ds_list_add(ww.mobList, objShadow3); }
				if(i == 14){ ds_list_add(ww.mobList, objThorn); } 
				if(i == 15){ ds_list_add(ww.mobList, objFrogman2); } 
				if(i == 16){ ds_list_add(ww.mobList, objShadow4); }
				if(i == 17){ ds_list_add(ww.mobList, objShadow5); } 
				if(i == 18){ ds_list_add(ww.mobList, objCreep4); }
				//if(i == 21){ ds_list_add(ww.mobList, objMagKnight3); }
				if(i == 19){ ds_list_add(ww.mobList, objBrute); } 
				if(i == 20){ ds_list_add(ww.mobList, objKing); }
				if(i == 21){ ds_list_add(ww.mobList, objEarthElemental); }
				if(i == 22){ ds_list_add(ww.mobList, objFireElemental); }
				if(i == 23){ ds_list_add(ww.mobList, objWaterElemental); }
			}
			
			if (nn % 2 == 0){
				var rMax = ceil((nn - 2) / 3);
				var rMin = rMax - ceil(nn / 6);
				if(nn % 4 == 0){ rMin = rMax - 1; }
				if(rMin < 0){ rMin = 0; }
				if(rMax > 16){ rMax = 16; }
				for(var i=rMin; i<=rMax; i++){
					if(i == 0){ ds_list_add(ww.mobList, objCreep); } 
					if(i == 1){ ds_list_add(ww.mobList, objCreep); } //1
					if(i == 2){ ds_list_add(ww.mobList, objBubble); } //6
					if(i == 3){ ds_list_add(ww.mobList, objCandle); } //9
					if(i == 4){ ds_list_add(ww.mobList, objNinja); } //12
					if(i == 5){ ds_list_add(ww.mobList, objSkullCaster); } //15
					if(i == 6){ ds_list_add(ww.mobList, objFrostCaster); } //18
					if(i == 7){ ds_list_add(ww.mobList, objPoxCaster); } //21
					if(i == 8){ ds_list_add(ww.mobList, objFlame); }  //24
					if(i == 9){ ds_list_add(ww.mobList, objFrogmanMage); } //27
					if(i == 10){ 
						if(n % 6 == 0){
							ds_list_add(ww.mobList, objBombCreep); //30
						} else {
							ds_list_add(ww.mobList, objCreep3);
						}
					}
					if(i == 11){ ds_list_add(ww.mobList, objFishTank); } 
					if(i == 12){ ds_list_add(ww.mobList, objImp); }
					if(i == 13){ ds_list_add(ww.mobList, objFrogmanMage2); } 
					if(i == 14){ ds_list_add(ww.mobList, objFearCaster); } 
					if(i == 15){ ds_list_add(ww.mobList, objDruid); }
					if(i == 16){ ds_list_add(ww.mobList, objMagus); } 
				}
			
			}
		
		
		}
	

	
	
	
	if(ww.stageMax > ww.eldarPast && instance_number(objEldar) == 0){
		var b = newAllySpot();
		if(b != -1){
			var guy = instance_create_depth(390 + (b * 70), 700, -2000, objEldar);
			guy.xSpot = b; guy.ySpot = 9;
			ww.map[b, 9] = guy;
		}
	}
	if(ww.stageMax > ww.selfPast && instance_number(objSelf) == 0){
		var b = newAllySpot();
		if(b != -1){
			var guy = instance_create_depth(390 + (b * 70), 700, -2000, objSelf);
			guy.xSpot = b; guy.ySpot = 9;
			ww.map[b, 9] = guy;
		}
	}
	
	
	
	if(ww.eleFighterOnStart){
		var n = 0;
		//with(objUnit){ if(!foe){ n++; } } ///
		if(n < 20){
		
			var b = newAllySpot();
			if(b != -1){
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

	var goons = 0;
	if(ww.justLost){
	
		goons += 4;
	}



	for(var i=0; i<goons; i++){
		var b = newAllySpot();
		if(b != -1){
			var t = objGoon;
			if(ww.goonLevel >= 2){ t = objGoon2; }
			if(ww.goonLevel >= 3){ t = objGoon3; }
			if(ww.goonLevel >= 4){ t = objGoon4; }
			if(ww.goonLevel >= 5){ t = objGoon5; }
		
			var guy = instance_create_depth(390 + (b * 70), 700, -2000, t);
			guy.xSpot = b; guy.ySpot = 9;
			ww.map[b, 9] = guy;
		}	
	}

	if(ww.perk[9, 0]){
		with(objArcher){
			ammo += (ww.stage * 2);
		}
	}










	ww.justLost = false;
	saveGame();


}
