event_inherited();
name = "Chemist";
element = "Water";

hp = 300;
mhp = 300;
hope = 40;

might = 0;
dice = 2;

armor = 1;
regen = 6;

strikeDownDef = 1;

if(ww.perk[5, 1]){
	sprite_index = imgChemist2;
	hp += 200;
	mhp += 200;
	regen += 6;
	might += 14;
}

if(ww.perk[5, 0]){ armor += 4; }
allyBonusStats();