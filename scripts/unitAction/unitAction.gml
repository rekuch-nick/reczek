function unitAction() {
	if(frozen > 0 || stun > 0){
		frozen = clamp(frozen - 1, 0, frozen);
		return;
	}


	if(ww.map[xSpot, ySpot].object_index == objAngel){ 
		if(irandom_range(1, 5) == 1){ hpDrain ++; }
		hp -= hpDrain; 
	}

	if(object_index == objEldar){
		for(var b=5; b<10; b++){
			var u = ww.map[xSpot, b];
			if(u != noone){
				u.eldarShield += 62;
			}
		}
	}


	if( (ww.map[xSpot, ySpot].object_index == objChemist && ww.epic[2]) ||
			(ww.map[xSpot, ySpot].object_index == objAngel)
			){
		for(var a=xSpot-1; a<=xSpot+1; a++){
			for(var b=ySpot-1; b<=ySpot+1; b++){
				if(a == xSpot && b == ySpot){ continue; }
				if(inBounds(a, b)){
					var u = ww.map[a, b];
					if(u != noone){
						if(u.foe == foe){
							if(u.hp > 0 && u.hp < u.mhp){
								u.hp += 10;
								if(u.hp > u.mhp){ u.hp = u.mhp; }
								instance_create_depth(390 + (a * 70) + 35, (b * 70) + 35, ww.EFF_LAYER - 1, effSmallHeal);
							}
						}
					}
				}
			}
		}
	}







	if(moveSidewaysCount > 0){ moveSidewaysCount --; }

	if(retreat || (smartTank && hp / mhp < .25 && irandom_range(1, 4) == 1)){
		xt = xSpot;
		yt = foe ? ySpot - 1 : ySpot + 1;
		if(inBounds(xt, yt)){
			var o = ww.map[xt, yt];
			if(o != noone && o.foe == foe && !o.retreat){
				moveTo(xt, yt);
				return;
			}
		}
	}

	if(smartLob){
		xt = xSpot;
		yt = foe ? ySpot - 1 : ySpot + 1;
		if(ySpot == 5 && inBounds(xt, yt)){
			var o = ww.map[xt, yt];
			if(o != noone && o.foe == foe && !o.retreat && !o.smartLob){
				moveTo(xt, yt);
				return;
			}
		}
	}


	if(irandom_range(0, 99) < warpChance){
		var u = getRandomAlly();
		if(u != noone){
			moveTo(u.xSpot, u.ySpot)
			//u.x = x; u.y = y;
		}
	}


	if(spell != ""){
		if(spellCD < 1){
	
			if(spell == "Pox"){ pox(); }
			if(spell == "Frost"){ frost(); }
			if(spell == "AllPox"){ allPox(); }
			if(spell == "AllFire"){ allFire(); }
			if(spell == "BlastAoE"){ blastAoE(); }
			if(spell == "Hope"){ 
				ww.fear += spellPower;
			}
			
			spellCD = spellCDMax;
		
		} else {
			spellCD --;
		}
	}


	if(shot != noone && irandom_range(0, 99) < shotChance){
	
		var haveToAdvance = false;
		if(shotChance == 100 && ySpot == 3 && ww.map[xSpot, 4] == noone){ haveToAdvance = true; }
		if(shotChance == 100 && ySpot == 6 && ww.map[xSpot, 5] == noone){ haveToAdvance = true; }
		
		if(!haveToAdvance){
			
			var s = instance_create_depth(x + 35, y + 35, ww.EFF_LAYER, shot);
			s.passThrough = shotThrough;
			s.element = element;
			s.pow = spellPower;
			s.dir = foe ? 1 : -1;
			if(element == "Water"){ s.sprite_index = imgWaterShot; }
			if(element == "Earth"){ s.sprite_index = imgEarthShot; }
			if(element == "Fire"){ s.sprite_index = imgFireShot; }
			
			return;
		}
	
	}



	if(lobShot != noone){
		xt = xSpot;
		yt = ySpot;
		yt = foe ? yt + 2 : yt - 2;
		if(inBounds(xt, yt)){
			var haveToAdvance = false;
			if(ySpot == 3 && ww.map[xSpot, 4] == noone){ haveToAdvance = true; }
			if(ySpot == 6 && ww.map[xSpot, 5] == noone){ haveToAdvance = true; }
		
			if(!haveToAdvance && ww.map[xt, yt] != noone && ww.map[xt, yt].foe != foe){
			
				var lob = instance_create_depth(x + 35, y + 35, ww.EFF_LAYER, lobShot);
				lob.shooter = ww.map[xSpot, ySpot];
				lob.yt = foe ? y + 35 + 140 : y + 35 - 140;
				lob.element = element;
				lob.pow = might;
				for(var i=0; i<dice; i++){ lob.pow += irandom_range(1, 6); }
				lob.dir = foe ? 1 : -1;
				if(element == "Water"){ lob.sprite_index = imgWaterShot; }
				if(element == "Earth"){ lob.sprite_index = imgEarthShot; }
				if(element == "Fire"){ lob.sprite_index = imgFireShot; }
			
				if(longLob == noone){ return; }
			}
		}
	}

	if(longLob != noone){
		xt = xSpot;
		yt = ySpot;
		yt = foe ? yt + 3 : yt - 3;
		if(inBounds(xt, yt)){
			var haveToAdvance = false;
			if(ySpot == 3 && ww.map[xSpot, 4] == noone){ haveToAdvance = true; }
			if(ySpot == 6 && ww.map[xSpot, 5] == noone){ haveToAdvance = true; }
			if(ySpot == 2 && ww.map[xSpot, 3] == noone){ haveToAdvance = true; }
			if(ySpot == 5 && ww.map[xSpot, 4] == noone){ haveToAdvance = true; }
		
			if(!haveToAdvance && ww.map[xt, yt] != noone && ww.map[xt, yt].foe != foe){
			
				var lob = instance_create_depth(x + 35, y + 35, ww.EFF_LAYER, longLob);
				lob.shooter = ww.map[xSpot, ySpot];
				lob.yt = foe ? y + 35 + 210 : y + 35 - 210;
				lob.element = element;
				lob.pow = might;
				for(var i=0; i<dice; i++){ lob.pow += irandom_range(1, 6); }
				lob.dir = foe ? 1 : -1;
				if(element == "Water"){ lob.sprite_index = imgWaterShot; }
				if(element == "Earth"){ lob.sprite_index = imgEarthShot; }
				if(element == "Fire"){ lob.sprite_index = imgFireShot; }
			
				return;
			}
		}
	}

	if(archer || (halfArcher && irandom_range(0, 4) == 1)){
		var haveToAdvance = false;
		if(!foe && ySpot > 5 && ww.map[xSpot, ySpot - 1] == noone){ haveToAdvance = true; }
		if(!foe && ySpot < 4 && ww.map[xSpot, ySpot + 1] == noone){ haveToAdvance = true; }
		if(!haveToAdvance){
			archeryTarget = pickArcheryTarget();
			if(archeryTarget != noone){
				var t = objArrow;
				if(object_index == objBard && irandom_range(0, 4) == 1){ t = objShockArrow; }
				var s = instance_create_depth(x + 35, y + 10, ww.EFF_LAYER, t);
				s.image_angle = 90;
				s.pow = might;
				for(var i=0; i<dice; i++){ s.pow += irandom_range(1, 6); }
				s.xt = archeryTarget.x + irandom_range(20, 50);
				s.yt = archeryTarget.y + irandom_range(35, 105);
				if(archeryTarget.ySpot == 4){
					s.yt = archeryTarget.y + 35;
				}
				s.foe = foe;
			
			
			
			
				if(ammo > 0){
					ammo --;
					if(ammo < 1){
					
						if(ww.perk[2, 0] && ww.gems > 0){
							ww.gems --;
							ammo += 250;
							if(ww.perk[6, 1]){ ammo += 250; }
						
						} else {
						
							dragonSafe(xSpot, ySpot);
							ww.mouseOverUnit = noone;
							var t = objGoon2;
							if(ww.goonLevel >= 3){ t = objGoon3; }
							if(ww.goonLevel >= 4){ t = objGoon4; }
							if(ww.goonLevel >= 5){ t = objGoon5; }
							ww.map[xSpot, ySpot] = instance_create_depth(x, y, depth, t);
							ww.map[xSpot, ySpot].xSpot = xSpot;
							ww.map[xSpot, ySpot].ySpot = ySpot;
							instance_destroy();
						}
					}
				}
			}
		}
	}


	if(tileSpell != noone){
		if(tileCD < 1){
	
			var u = getRandomFoe();
			if(tileTargetType == "non-front"){ u = getRandomNonFrontFoe(); }
		
			if(u != noone){
				var s = instance_create_depth(390 + (u.xSpot * 70), u.ySpot * 70, ww.EFF_LAYER, tileSpell);
				s.pow = spellPower;
				tileCD = tileCDMax;
			}
		} else {
			tileCD --;
		}
	}




	xt = xSpot;
	yt = ySpot;
	yt = foe ? yt + 1 : yt - 1;
	if(inBounds(xt, yt)){
		if(ww.map[xt, yt] == noone){ // move forward
			var inRange = foe ? yt < 5 : yt > 4;
			if(inRange){
				moveTo(xt, yt);
			} else { // move sideways along front
				yt = ySpot;
				xt = xSpot < 3 ? xSpot + 1 : xSpot - 1;
				if(ww.map[xt, yt] == noone){
					moveSidewaysCount += 2;
					if(moveSidewaysCount >= 3){
						moveSidewaysCount = 0;
						moveTo(xt, yt);
					}
				}
			}
		} else { // fight
			var adj = ww.map[xt, yt];
			if(foe != adj.foe){
				attack(adj);
			}
		}
	}







	if(isEleFighter && ww.eleFighterLob && irandom_range(1, 4) == 1){
		xt = xSpot;
		yt = ySpot;
		yt = foe ? yt + 2 : yt - 2;
		if(inBounds(xt, yt)){
		
			if(ww.map[xt, yt] != noone && ww.map[xt, yt].foe != foe){
			
				var lob = instance_create_depth(x + 35, y + 35, ww.EFF_LAYER, objLobShot);
				lob.shooter = ww.map[xSpot, ySpot];
				lob.yt = foe ? y + 35 + 140 : y + 35 - 140;
				lob.element = element;
				lob.pow = might;
				for(var i=0; i<dice; i++){ lob.pow += irandom_range(1, 6); }
				lob.dir = foe ? 1 : -1;
				if(element == "Water"){ lob.sprite_index = imgWaterShot; }
				if(element == "Earth"){ lob.sprite_index = imgEarthShot; }
				if(element == "Fire"){ lob.sprite_index = imgFireShot; }
			
			}
		}
	}













	if(fancy > 0 && irandom_range(0, 1) == 1){
		ww.coins += fancy;
		for(var i=0; i<fancy; i+= 3){
			instance_create_depth(x + 35, y + 5, ww.EFF_LAYER, effCoin);
		}
	}

	if(flower > 0 && sprite_index != imgBear){
		ww.herbs += flower;
		for(var i=0; i<flower; i++){
			instance_create_depth(x + 35, y + 5, ww.EFF_LAYER, effHerb);
		}
	}

	if(bardSong > 0){
		ww.hope = clamp(ww.hope + (bardSong * 5), 0, ww.hopeMax);
	}


}
