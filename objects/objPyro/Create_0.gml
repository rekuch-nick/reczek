event_inherited();
name = "Fire Juggler";
element = "Fire";

hp = 200;
mhp = 200;
hope = 40;

might = 4;
dice = 2;

armor = 0;

lobShot = objLobShot;
if(ww.epic[3]){ longLob = objLobShot; }

if(ww.perk[3, 1]){
	sprite_index = imgPyro2;
	dice += 4;
	might += 4;
	smartLob = true;
}

if(ww.perk[5, 0]){ armor += 4; }
allyBonusStats();