function resolveCasting() {
	if(mouse_x < 390 || mouse_x > 390 + (70 * 6)){ return; }

	if(casting == 1 && mouse_check_button_pressed(mb_left)){
	
		var a = getX(mouse_x);
		var b = getY(mouse_y);
		if(inBounds(a, b)){
			spendMP(lightningCost);
			lightningBolt(a, b);
		
			if(multiLightning){
				lightningBolt(a-1, b);
				lightningBolt(a+1, b);
				lightningBolt(a, b-1);
				lightningBolt(a, b+1);
			}
		}
		casting = 0;
	}


	if(casting == 4 && mouse_check_button_pressed(mb_left)){
		var a = getX(mouse_x);
		var b = getY(mouse_y);
		if(inBounds(a, b)){
			spendMP(healCost);
			instance_create_depth(390 + (a * 70) + 35, (b * 70) + 35, EFF_LAYER - 1, effHeal);
			if(map[a, b] != noone){
				map[a, b].hp = clamp(map[a, b].hp + healPower, 0, map[a, b].mhp);
				if(ww.greaterHeal){
					map[a, b].frozen = 0;
					map[a, b].poison = 0;
					map[a, b].defDown = 0;
					map[a, b].stun = 0;
				}
			}
		}
		casting = 0;
	}

	if(casting == 6 && mouse_check_button_pressed(mb_left)){
	
		var a = getX(mouse_x);
		var b = getY(mouse_y);
		if(b > 4 && inBounds(a, b)){
		
			if(map[a, b] != noone){
				spendMP(2000);
				var u = map[a, b];
				with(objDragon){
					if(sleeping){
						sprite_index = flySprite;
						sleeping = false;
						takingHome = true;
						pickupTarget = u;
					}
				}
			}
		}
		casting = 0;
	}



}
