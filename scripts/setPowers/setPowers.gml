function setPowers() {
	ww.canSwap = ww.perk[0, 4];


	ww.heal = ww.perk[2, 4] ? 1 : 0;
	ww.heal = ww.perk[8, 2] ? ww.heal + 1 : ww.heal;


	ww.charge = ww.perk[2, 3] ? 3 : 0;
	if(ww.perk[10, 4]){ ww.charge += 3; }

	ww.goonLevel = ww.perk[0, 3] ? 2 : 1;
	ww.goonLevel = ww.perk[0, 2] ? ww.goonLevel + 1 : ww.goonLevel;
	ww.goonLevel = ww.perk[0, 1] ? ww.goonLevel + 1 : ww.goonLevel;
	ww.goonLevel = ww.perk[0, 0] ? ww.goonLevel + 1 : ww.goonLevel;




	ww.makeFireMan = ww.perk[3, 4];
	ww.makeEarthMan = ww.perk[4, 4];
	ww.makeWaterMan = ww.perk[5, 4];
	ww.makeFancyMan = ww.perk[6, 4];

	ww.makePyro = ww.perk[3, 3];
	ww.makeHerbCollector = ww.perk[4, 3];
	ww.makeChemist = ww.perk[5, 3];
	ww.makeArcher = ww.perk[6, 3];

	ww.makeBard = ww.perk[6, 2];

	ww.goonCharge = 1;
	if(ww.perk[1, 4]){ ww.goonCharge += .5; }
	if(ww.perk[1, 3]){ ww.goonCharge += .5; }
	if(ww.perk[1, 2]){ ww.goonCharge += .5; }
	if(ww.perk[1, 1]){ ww.goonCharge += .5; }
	if(ww.perk[1, 0]){ ww.goonCharge += .1; }

	ww.canSkill1 = ww.perk[7, 4];
	ww.lightningCost = 3000;
	ww.lightningPower = ww.perk[7, 1] ? 350 : 200;
	skill1.can = ww.canSkill1;
	skill1.cost = ww.lightningCost;
	skill1.pic = uimgSkill1;
	ww.multiLightning = ww.perk[7, 0];
	ww.starGain = ww.perk[7, 1];


	ww.canSkill2 = ww.perk[8, 4];
	ww.shieldCost = 500;
	skill2.can = ww.canSkill2;
	skill2.cost = ww.shieldCost;
	skill2.pic = uimgSkill2;


	ww.canSkill3 = ww.perk[7, 3];
	ww.rageCost = 500;
	skill3.can = ww.canSkill3;
	skill3.cost = ww.rageCost;
	skill3.pic = uimgSkill3;


	ww.canSkill4 = ww.perk[8, 3];
	ww.healCost = 2000;
	ww.healPower = 100;
	ww.greaterHeal = ww.perk[8, 1];
	if(ww.greaterHeal){ ww.healPower = 400; }
	skill4.can = ww.canSkill4;
	skill4.cost = ww.healCost;
	skill4.pic = uimgSkill4;


	ww.canSkill5 = ww.perk[9, 4];
	ww.gemCost = 5000;
	skill5.can = ww.canSkill5;
	skill5.cost = ww.gemCost;
	skill5.pic = uimgSkill5;


	//ww.canSkill6 = ww.perk[9, 3];
	ww.techCost = 1000;
	//skill6.can = ww.canSkill6;
	//skill6.cost = ww.techCost;
	//skill6.pic = uimgSkill6;

	ww.canRetreat = ww.perk[2, 2];



	ww.eleFighterOnStart = ww.perk[3, 2];
	ww.eleFighterLob = ww.perk[4, 2];
	ww.eleFighterFastHeal = ww.perk[5, 2];
	ww.eleXPGain = ww.perk[11, 4];

	ww.deflectShots = ww.perk[9, 1];
	ww.rageStopsSkellys = ww.perk[9, 2];

	ww.goonOnStart = ww.perk[2, 1];
	ww.gemMercs = ww.perk[2, 0];

	ww.herbHeal = ww.perk[8, 0];

	ww.makeEleLords = ww.perk[10, 0];
	ww.eleAscend = ww.perk[11, 1];

	ww.canChamp = ww.perk[10, 2];



	ww.bearForm = ww.perk[4, 1];

	ww.rainbowCD = 30 * 60;
	ww.canRainbow = ww.perk[4, 0];

	ww.canOvercharge = ww.perk[10, 1];

	ww.winBonus = ww.perk[11, 0];



	ww.canSkill6 = eggTank.hatchPhase == 6;
	skill6.can = ww.canSkill6;
	skill6.cost = 2000;
	skill6.pic = uimgRetire;

	/*
	ww.eliteUpgrades = true;
	for(var a=0; a<12; a++){ for(var b=0; b<5; b++){
		if(!ww.perk[a, b]){
			ww.eliteUpgrades = false;
			a = 99; b = 99;
		}
	}}
	*/

	ww.eliteUpgrades = false;
	for(var i=0; i<20; i++){
		if(ww.epic[i]){
			ww.eliteUpgrades = true;
			break;
		}
	}


}
