function resetGame() {
	ini_open("saveData.ini");

	ini_write_real("Main", "coins", 0);
	ini_write_real("Main", "banners", 0);
	ini_write_real("Main", "herbs", 0);
	ini_write_real("Main", "gems", 0);
	ini_write_real("Main", "stars", 0);

	ini_write_real("Main", "stage", 1);

	ini_write_real("Main", "sound", true);

	for(var a=0; a<12; a++){ for(var b=0; b<5; b++){
		var s = "perk" + string(a) + "," + string(b);
		ini_write_real("Main", s, false);
	}}

	ini_write_real("Main", "globalPowerLevel", 0);
	ini_write_real("Main", "globalPowerXP", 0);
	ini_write_real("Main", "globalPowerXPMax", 1000);

	ini_write_real("Main", "hatchPhase", 0);
	ini_write_real("Main", "hatchCD", 0);
	ini_write_real("Main", "hatchCDMax", 30 * 60 * 5);

	ini_write_real("Main", "rest", 0);
	ini_write_real("Main", "restMax", 30 * 60 * 15);
	ini_write_real("Main", "age", 0);
	ini_write_real("Main", "ageMax", 30 * 60 * 15 * 10);
	ini_write_real("Main", "level", 0);

	for(var i=0; i<20; i++){
		ini_write_real("Main", "epic" + string(i), false);
	}

	soundButton.image_index = 0;

	ini_close();

	loadGame();
	ww.stage = ww.stageMax;
	if(!ww.soundOn){ soundButton.image_index ++; }


}
