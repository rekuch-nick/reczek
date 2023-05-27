function allyBonusStats() {

	if(ww.globalPowerLevel == 0){ return; }

	var m = 1 + (ww.globalPowerLevel / 10);

	mhp = floor(mhp * m);
	hp = floor(hp * m);
	spellPower = floor(spellPower * m);
	might = floor(might * m);
	dice = floor(dice * m);



}
