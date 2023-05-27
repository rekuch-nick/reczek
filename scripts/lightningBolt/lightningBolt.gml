function lightningBolt(argument0, argument1) {
	var a = argument0;
	var b = argument1;

	if(inBounds(a, b)){
	
		instance_create_depth(390 + (a * 70) + 35, (b * 70) + 35, ww.EFF_LAYER - 1, effLightning);
		if(ww.map[a, b] != noone){
		
			if(ww.map[a, b].lightningProof && ww.map[a, b].foe){
			
				instance_create_depth(ww.map[a, b].x + 35, ww.map[a, b].y + 35, ww.EFF_LAYER, effLightningShield);
			
			
				var s = instance_create_depth(ww.map[a, b].x + 35, ww.map[a, b].y + 35, ww.EFF_LAYER, objShot);
				s.pow = (ww.map[a, b].might * 2) + (ww.map[a, b].dice * 4);
				s.dir = 1;
			
			
			
			
			} else {
		
				damage(ww.map[a, b], ww.lightningPower, "");
			
				if(ww.starGain && ww.map[a, b].hp < 1){
					ww.stars ++;
					instance_create_depth(390 + (a * 70) + 35, (b * 70) + 35, ww.EFF_LAYER - 1, effStar);
				}
			}
		
		
		}
	}




}
