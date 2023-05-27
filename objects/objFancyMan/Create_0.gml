event_inherited();
name = "Gentleman";

hp = 70;
mhp = 70;
hope = 40;

might = 8;
dice = 6;

armor = 0;

if(ww.perk[2, 1]){ fancy = 1; }
if(ww.perk[5, 0]){ armor += 4; }

if(ww.perk[9, 0]){
	sprite_index = imgFancyMan2;
	hp += 100;
	mhp += 100;
	
	dice += 2;
	
	poisonChance = 100;
	poisonStrike = 30 * 20;
}
allyBonusStats();