event_inherited();
name = "Bard";

hp = 200;
mhp = 200;
hope = 40;

might = 4;
dice = 4;

armor = 0;

bardSong = 1;

if(ww.perk[5, 0]){ armor += 4; }

if(ww.perk[6, 0]){
	sprite_index = imgBard2;
	halfArcher = true;
	might += 4;
	dice += 4;
	
}
allyBonusStats();