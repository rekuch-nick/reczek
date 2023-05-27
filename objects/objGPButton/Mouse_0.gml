


if(ww.coins > 0){
	heldFor ++;
	
	
	var m = ceil(ww.globalPowerXPMax / (80));
	
	
	
	for(var i=0; i<m; i++){
		if(ww.coins > 0){
			ww.coins --;
			ww.globalPowerXP ++;
			
			
			if(ww.globalPowerXP >= ww.globalPowerXPMax){
				ww.globalPowerXP = 0;
				ww.globalPowerLevel ++;
				ww.globalPowerXPMax = floor(ww.globalPowerXPMax * 1.2);
				
				with(objUnit){ if(!foe){
					// improve existing units
				}}
				
				
				
			}
		}
	}
	
	
}


