event_inherited();
name = "Archer";

hp = 200;
mhp = 200;
hope = 40;

might = 2;
dice = 2;

armor = 0;

archer = true;
ammo = 250;

if(ww.perk[5, 0]){ armor += 4; }

if(ww.perk[6, 1]){
	ammo += 250;
	sprite_index = imgArcher2;
	might += 6;
	dice += 4;
}
allyBonusStats();