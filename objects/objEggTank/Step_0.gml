if(ww.state != "play" || !ww.perk[10, 3]){ return; }


if(firstFrame){
	firstFrame = false;
	
	//ini_open("saveData.ini");
	//eggTank.hatchPhase = ini_read_real("Main", "hatchPhase", 0);
	//eggTank.hatchCD = ini_read_real("Main", "hatchCD", 0);
	//eggTank.hatchCDMax = ini_read_real("Main", "hatchCDMax", 30 * 60 * 5);
	//ini_close();
}

if(hatchPhase < 6){

	hatchCD -= (ww.gameSpeed);

	if(hatchCD <= 1){
		hatchCD = hatchCDMax;
		hatchPhase ++;
		
		if(hatchPhase == 6){
			for(var i=0; i<50; i++){
				instance_create_depth(irandom_range(x + 200, x + 400), irandom_range(y + 100, y + 200), depth - 1, objEggSpark);
			}
			instance_create_depth(x + 290, y + 160, depth - 2, objDragon);
			
			setPowers();
		}
	}
	
}

image_index = hatchPhase;