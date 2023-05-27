
if(ww.state == "play"){





	
	if(mouse_x >= x && mouse_x <= x + sprite_width){
		if(mouse_y >= y && mouse_y <= y + sprite_height){
			if(sleeping){
				if(rest >= restMax){
					ww.smallToolTip = "CLick here or press R to wake the dragon.";
				} else {
					ww.smallToolTip = "zZz...";
				}
			}
		}
	}

	
	
	
	
	
	
	/*
	if(keyboard_check_pressed(vk_backspace)){
		flyTime = 30 * 20;
		thinkCD = 0;
		sleeping = false;
		sprite_index = flySprite;
	}
	*/
	
	
	if(sleeping){ for(var i=0; i<ww.gameSpeed; i++){
		
		if(rest < restMax){
			rest ++;
		}
		
		
		if(level < 4){
			if(irandom_range(0, 1) == 1){ age ++; }
			 //age += 24; ///
			if(age >= ageMax){
				age = 0;
				level ++;
				
				if(level == 2){ flySprite = imgDrag2; sleepA = imgDragSleep2; sleepB = imgDragSleep2b; }
				if(level == 3){ 
					xHome += 5;
					flySprite = imgDrag3; sleepA = imgDragSleep3; sleepB = imgDragSleep3b; }
				if(level == 4){ 
					xHome -= 15;
					yHome -= 5;
					flySprite = imgDrag4; sleepA = imgDragSleep4; sleepB = imgDragSleep4b; }
				sprite_index = sleepA;
				yHome -= 5;
				y = yHome; x = xHome;
			}
		}
		
	}}
	
	
	if(!sleeping){ for(var i=0; i<ww.gameSpeed; i++){
		
		
		if(takingHome){ 
			for(var badCode=0; badCode<ww.gameSpeed; badCode ++){
			
				xt = 600; yt = 770;
			
				if(pickupTarget != noone){
					if(!instance_exists(pickupTarget)){
						pickupTarget = noone;
						carried = noone;
						takingHome = false;
					}
				
					xt = pickupTarget.x + 35;
					yt = pickupTarget.y + 35;
				
				}
			
			
			
			
				var angle = arctan2(yt - y, xt - x);
				xs = cos(angle) * moveSpeed;
				ys = sin(angle) * moveSpeed;
			
				image_angle = point_direction(x, y, xt, yt);
				x += xs; y += ys;
			
				var d = point_distance(x, y, xt, yt);
				if(pickupTarget != noone){
					if(d < 15){
						carried = pickupTarget.sprite_index;
						carriedHP = pickupTarget.mhp;
						pickupTarget.hp = 0;
						pickupTarget.hope = 0;
					
						pickupTarget = noone;
					}
				} else {
					if(d < 15){
						carried = noone;
						takingHome = false;
					
						//rewards
						ww.hope = clamp(ww.hope + 20, 0, ww.hopeMax);
						age += clamp(carriedHP * 20, 10000, carriedHP * 20);
					
					
						carriedHP = 0;
					}
				}
			
			
			
			
			}
			return;
		}
		
		
		
		
		
		
		
		
		
		flyTime --;
		
		x += xs; y += ys;
		thinkCD -= moveSpeed;
		
		fireCD --;
		if(fireCD < 1 && flyTime > 0 && x <= (390 + 70 * 6)){
			var r = (level * 2) + 3;
			var s = instance_create_depth(x + (xs * r), y + (ys * r), depth + 1, effDragonFire);
			s.pow = level;
			fireCD = 23 - (level * 3);
		}
		
		if(thinkCD < 1){
			xt = irandom_range(390, 390 + 70 * 6);
			yt = irandom_range(0, 70 * 5);
			
			var u = getRandomMonster();
			if(u != noone){
				xt = u.x + 35;
				yt = u.y + 55;
			}
			
			if(flyTime < 1){
				xt = xHome; yt = yHome;
			}
			if(point_distance(x, y, xt, yt) > 10){
				image_angle = point_direction(x, y, xt, yt);
			}
			var angle = arctan2(yt - y, xt - x);
			xs = cos(angle) * moveSpeed;
			ys = sin(angle) * moveSpeed;
			
			thinkCD = point_distance(x, y, xt, yt);
		}
		
		var disToHome = point_distance(x, y, xHome, yHome);
		
		if(flyTime < 1 && disToHome < 10){
			x = xHome; y = yHome;
			image_angle = 0;
			sleeping = true;
			sprite_index = sleepA;
		}
		
	}}
	
	
	
	
	
	
	
	
	if(flyTime < 1){
		aniCD --;
		if(aniCD < 1){
			aniCD = 40;
			if(sprite_index == sleepA){ sprite_index = sleepB; return; }
			if(sprite_index == sleepB){ sprite_index = sleepA; return; }
		}
	}
	
	
	
	
	
	
	
	if(keyboard_check_pressed(ord("R")) && rest >= restMax){
		rest = 0;
		flyTime = 30 * 20 + (level * 30 * 5);
		thinkCD = 0;
		sleeping = false;
		sprite_index = flySprite;
	}
	
	
	
	
	
	
	
	
}