function saveGame() {
	ini_open("saveData.ini");

	ini_write_real("Main", "coins", ww.coins);
	ini_write_real("Main", "banners", ww.banners);
	ini_write_real("Main", "herbs", ww.herbs);
	ini_write_real("Main", "gems", ww.gems);
	ini_write_real("Main", "stars", ww.stars);

	ini_write_real("Main", "stage", ww.stageMax);

	ini_write_real("Main", "sound", ww.soundOn);

	for(var a=0; a<12; a++){ for(var b=0; b<5; b++){
		var s = "perk" + string(a) + "," + string(b);
		ini_write_real("Main", s, ww.perk[a, b]);
	}}

	for(var i=0; i<20; i++){
		ini_write_real("Main", "epic" + string(i), ww.epic[i]);
	}

	ini_write_real("Main", "globalPowerLevel", ww.globalPowerLevel);
	ini_write_real("Main", "globalPowerXP", ww.globalPowerXP);
	ini_write_real("Main", "globalPowerXPMax", ww.globalPowerXPMax);


	ini_write_real("Main", "hatchPhase", eggTank.hatchPhase);
	ini_write_real("Main", "hatchCD", eggTank.hatchCD);
	ini_write_real("Main", "hatchCDMax", eggTank.hatchCDMax);

	if(instance_number(objDragon) > 0){
		var d = instance_find(objDragon, 0);
	
		ini_write_real("Main", "rest", d.rest);
		ini_write_real("Main", "restMax", d.restMax);
		ini_write_real("Main", "age", d.age);
		ini_write_real("Main", "ageMax", d.ageMax);
		ini_write_real("Main", "level", d.level);
	} else {
		ini_write_real("Main", "rest", 0);
		ini_write_real("Main", "restMax", 30 * 60 * 15);
		ini_write_real("Main", "age", 0);
		ini_write_real("Main", "ageMax", 30 * 60 * 15 * 10);
		ini_write_real("Main", "level", 0);
	}






	ini_close();



}
