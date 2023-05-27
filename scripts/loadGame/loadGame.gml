function loadGame() {

	ini_open("saveData.ini");
	ww.coins = ini_read_real("Main", "coins", 0);
	ww.banners = ini_read_real("Main", "banners", 0);
	ww.herbs = ini_read_real("Main", "herbs", 0);
	ww.gems = ini_read_real("Main", "gems", 0);
	ww.stars = ini_read_real("Main", "stars", 0);

	ww.stageMax = ini_read_real("Main", "stage", 1);

	ww.soundOn = ini_read_real("Main", "sound", true);

	for(var a=0; a<12; a++){ for(var b=0; b<5; b++){
		var s = "perk" + string(a) + "," + string(b);
		ww.perk[a, b] = ini_read_real("Main", s, false);
	}}

	for(var i=0; i<20; i++){
		ww.epic[i] = ini_read_real("Main", "epic" + string(i), false);
	}

	ww.globalPowerLevel = ini_read_real("Main", "globalPowerLevel", 0);
	ww.globalPowerXP = ini_read_real("Main", "globalPowerXP", 0);
	ww.globalPowerXPMax = ini_read_real("Main", "globalPowerXPMax", 1000);


	ww.hatchPhase = ini_read_real("Main", "hatchPhase", 0);
	ww.hatchCD = ini_read_real("Main", "hatchCD", 0);
	ww.hatchCDMax = ini_read_real("Main", "hatchCDMax", 30 * 60 * 5);

	ww.drag_rest = ini_read_real("Main", "rest", 0);
	ww.drag_restMax = ini_read_real("Main", "restMax", 0);
	ww.drag_age = ini_read_real("Main", "age", 0);
	ww.drag_ageMax = ini_read_real("Main", "ageMax", 0);
	ww.drag_level = ini_read_real("Main", "level", 0);




	ini_close();
	


}
