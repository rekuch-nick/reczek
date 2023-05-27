function castGem() {
	var changedAny = false;



	for(var a=0; a<6; a++){
		for(var b=5; b<10; b++){
		
			var ele = "";
		
			var u = ww.map[a, b];
			if(u != noone && !u.isGem){
				var o = u.object_index;
				if(o == objGoon || o == objGoon2 || o == objGoon3 || o == objGoon4 || o == objGoon5){
				
					var safeFire = true;
					var safeEarth = true;
					var safeWater = true;
				
					var x1 = a - 2;
					var y1 = b;
					var x2 = a - 1;
					var y2 = b;
				
					if(inBounds(x1, y2)){
						var u1 = ww.map[x1, y1];
						var u2 = ww.map[x2, y2];
					
						if(u1 != noone && u2 != noone){
							if(u1.isGem && u2.isGem){
								if(u1.element == u2.element){
									if(u1.element == "Fire"){ safeFire = false; }
									if(u1.element == "Earth"){ safeEarth = false; }
									if(u1.element == "Water"){ safeWater = false; }
								}
							}
						}
					}
				
				
					x1 = a;
					y1 = b - 2;
					x2 = a;
					y2 = b - 1;
				
					if(inBounds(x1, y2)){
						var u1 = ww.map[x1, y1];
						var u2 = ww.map[x2, y2];
					
						if(u1 != noone && u2 != noone){
							if(u1.isGem && u2.isGem){
								if(u1.element == u2.element){
									if(u1.element == "Fire"){ safeFire = false; }
									if(u1.element == "Earth"){ safeEarth = false; }
									if(u1.element == "Water"){ safeWater = false; }
								}
							}
						}
					}
				
				
					var r;
					var okay;
					do {
						r = irandom_range(1, 3);
						okay = true;
						if(r == 1 && !safeFire){ okay = false; }
						if(r == 2 && !safeEarth){ okay = false; }
						if(r == 3 && !safeWater){ okay = false; }
					
					
					} until (okay)
				
				
					if(r == 1){ ele = "Fire"; }
					if(r == 2){ ele = "Earth"; }
					if(r == 3){ ele = "Water"; }
				
				
					u.element = ele;
					u.isGem = true;
				
					if(u.object_index == objGoon){
						if(ele == "Fire"){ u.sprite_index = imgFireGem1; }
						if(ele == "Earth"){ u.sprite_index = imgEarthGem1; }
						if(ele == "Water"){ u.sprite_index = imgWaterGem1; }
					}
					if(u.object_index == objGoon2){
						if(ele == "Fire"){ u.sprite_index = imgFireGem2; }
						if(ele == "Earth"){ u.sprite_index = imgEarthGem2; }
						if(ele == "Water"){ u.sprite_index = imgWaterGem2; }
					}
					if(u.object_index == objGoon3){
						if(ele == "Fire"){ u.sprite_index = imgFireGem3; }
						if(ele == "Earth"){ u.sprite_index = imgEarthGem3; }
						if(ele == "Water"){ u.sprite_index = imgWaterGem3; }
					}
					if(u.object_index == objGoon4){
						if(ele == "Fire"){ u.sprite_index = imgFireGem4; }
						if(ele == "Earth"){ u.sprite_index = imgEarthGem4; }
						if(ele == "Water"){ u.sprite_index = imgWaterGem4; }
					}
					if(u.object_index == objGoon5){
						if(ele == "Fire"){ u.sprite_index = imgFireGem5; }
						if(ele == "Earth"){ u.sprite_index = imgEarthGem5; }
						if(ele == "Water"){ u.sprite_index = imgWaterGem5; }
					}
				
				
				}
			}
		
		
		}
	}












	return changedAny;


}
