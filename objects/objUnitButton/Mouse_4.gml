



if(ww.state == "goon select"){
	ww.goon = unit;
	goonSelector.pic = pic;
	if(unit == objGoon){ ww.troopCDMax = ww.troopCDBaseMax; }
	if(unit == objGoon2){ ww.troopCDMax = ww.troopCDBaseMax * 2; }
	if(unit == objGoon3){ ww.troopCDMax = ww.troopCDBaseMax * 4; }
	if(unit == objGoon4){ ww.troopCDMax = ww.troopCDBaseMax * 8; }
	if(unit == objGoon5){ ww.troopCDMax = ww.troopCDBaseMax * 16; }
	
}

if(ww.state == "spec select"){
	ww.spec = unit;
	specSelector.pic = pic;
	if(unit == objFireMan){ ww.specCDMax = 30 * 45; }
	if(unit == objEarthMan){ ww.specCDMax = 30 * 45; }
	if(unit == objWaterMan){ ww.specCDMax = 30 * 45; }
	if(unit == objFancyMan){ ww.specCDMax = 30 * 45; }
	if(unit == objPyro){ ww.specCDMax = 30 * 75; }
	if(unit == objHerbCollector){ ww.specCDMax = 30 * 75; }
	if(unit == objChemist){ ww.specCDMax = 30 * 75; }
	if(unit == objArcher){ ww.specCDMax = 30 * 75; }
	if(unit == objFireLord){ ww.specCDMax = 30 * 300; }
	if(unit == objEarthLord){ ww.specCDMax = 30 * 300; }
	if(unit == objWaterLord){ ww.specCDMax = 30 * 300; }
	if(unit == objBard){ ww.specCDMax = 30 * 120; }
	
	
	if(unit == objNo){ ww.specCDMax = 30 * 10; }
	
	
}








with(objScreen){ instance_destroy(); }
with(objTempButton){ instance_destroy(); }
with(objExitButton){ instance_destroy(); }
ww.state = "play";
