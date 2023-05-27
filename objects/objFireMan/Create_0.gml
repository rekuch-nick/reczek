event_inherited();
name = "Elemental Fighter";
element = "Fire";

hp = 250;
mhp = 250;
hope = 40;

might = 4;
dice = 3;

armor = 0;

isEleFighter = true;

if(ww.perk[3, 2]){ mhp += 50; hp += 50; might += 2; dice += 1; }
if(ww.perk[4, 2]){ mhp += 50; hp += 50; might += 2; dice += 1; }
if(ww.perk[5, 2]){ mhp += 50; hp += 50; might += 2; dice += 1; }
if(ww.perk[11, 2]){ mhp += 50; hp += 50; might += 2; dice += 1; }


if(ww.perk[5, 0]){ armor += 4; }
allyBonusStats();