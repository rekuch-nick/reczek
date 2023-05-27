scale();

instance_create_depth(1055, 60, depth - 1, objExitButton);

instance_create_depth(75, 80, depth - 1, objGPButton);


for(var a=0; a<12; a++){
	for(var b=0; b<5; b++){
		
		var ug = instance_create_depth(110 + (a * 80), 180 + (b * 80), depth - 1, objUpgrade);
		ug.xSpot = a; ug.ySpot = b;
		perks[a, b] = ug;
	}
}

var a = 0; var b = 4;
perks[a, b].pic = uimgSwap;
perks[a, b].name = "Swap";
perks[a, b].text = "Left click and drag one of your units into an adjacent unit to have them trade places. Perfect for protecting injured units!";
perks[a, b].cost = 2;
perks[a, b].costType = "coins";
perks[a, b].a = a; perks[a, b].b = b;

a = 0; b = 3;
perks[0, 3].pic = uimgX2;
perks[0, 3].name = "Soldier Power";
perks[0, 3].text = "You can make soldier units that are more powerful but take longer to produce. You can change types anytime with the buttons in the bottom left of the screen.";
perks[0, 3].cost = 3;
perks[0, 3].costType = "banners";
perks[a, b].a = a; perks[a, b].b = b;

a = 0; b = 2;
perks[0, 2].pic = uimgX2;
perks[0, 2].name = "Soldier Power";
perks[0, 2].text = "You can make soldier units that are more powerful but take longer to produce. You can change types anytime with the buttons in the bottom left of the screen.";
perks[0, 2].cost = 6;
perks[0, 2].costType = "banners";
perks[a, b].a = a; perks[a, b].b = b;

a = 0; b = 1;
perks[0, 1].pic = uimgX2;
perks[0, 1].name = "Soldier Power";
perks[0, 1].text = "You can make soldier units that are more powerful but take longer to produce. You can change types anytime with the buttons in the bottom left of the screen.";
perks[0, 1].cost = 10;
perks[0, 1].costType = "banners";
perks[a, b].a = a; perks[a, b].b = b;

a = 0; b = 0;
perks[0, 0].pic = uimgX2;
perks[0, 0].name = "Soldier Power";
perks[0, 0].text = "You can make soldier units that are more powerful but take longer to produce. You can change types anytime with the buttons in the bottom left of the screen.";
perks[0, 0].cost = 16;
perks[0, 0].costType = "banners";
perks[a, b].a = a; perks[a, b].b = b;

a = 1; b = 4;
perks[1, 4].pic = uimgGoonSpeed;
perks[1, 4].name = "Soldier Speed";
perks[1, 4].text = "You can make soldier units more quickly. This upgrade costs fewer coins for each stage you've beaten.";
perks[1, 4].cost = clamp(10500 - (ww.stageMax * 500), 0, 10000);
perks[1, 4].costType = "coins";
perks[a, b].a = a; perks[a, b].b = b;

a = 1; b = 3;
perks[1, 3].pic = uimgGoonSpeed;
perks[1, 3].name = "Soldier Speed";
perks[1, 3].text = "You can make soldier units more quickly.";
perks[1, 3].cost = 2;
perks[1, 3].costType = "banners";
perks[a, b].a = a; perks[a, b].b = b;

a = 1; b = 2;
perks[1, 2].pic = uimgGoonSpeed;
perks[1, 2].name = "Soldier Speed";
perks[1, 2].text = "You can make soldier units more quickly.";
perks[1, 2].cost = 3;
perks[1, 2].costType = "banners";
perks[a, b].a = a; perks[a, b].b = b;

a = 1; b = 1;
perks[1, 1].pic = uimgGoonSpeed;
perks[1, 1].name = "Soldier Speed";
perks[1, 1].text = "You can make soldier units more quickly.";
perks[1, 1].cost = 4;
perks[1, 1].costType = "banners";
perks[a, b].a = a; perks[a, b].b = b;

a = 1; b = 0;
perks[1, 0].pic = uimgGoonSpeed;
perks[1, 0].name = "Soldier Speed";
perks[1, 0].text = "You can make soldier units more quickly.";
perks[1, 0].cost = 5;
perks[1, 0].costType = "banners";
perks[a, b].a = a; perks[a, b].b = b;

a = 2; b = 4;
perks[2, 4].pic = uimgHeal;
perks[2, 4].name = "Regeneration";
perks[2, 4].text = "Your units heal slowly over time.";
perks[2, 4].cost = 10;
perks[2, 4].costType = "coins";
perks[a, b].a = a; perks[a, b].b = b;

a = 2; b = 3;
perks[2, 3].pic = uimgMPGain;
perks[2, 3].name = "MP Gain";
perks[2, 3].text = "Gain MP energy over time.";
perks[2, 3].cost = 50;
perks[2, 3].costType = "coins";
perks[a, b].a = a; perks[a, b].b = b;



a = 2; b = 2;
perks[a, b].pic = uimgRetreat;
perks[a, b].name = "Retreat";
perks[a, b].text = "Right click a unit to order it to stay in the back.";
perks[a, b].cost = 5;
perks[a, b].costType = "gems";
perks[a, b].a = a; perks[a, b].b = b;


a = 2; b = 1;
perks[2, 1].pic = uimgFancy;
perks[a, b].name = "Tax collecting.";
perks[a, b].text = "Your Gentleman will produce coins every second.";
perks[a, b].cost = 25;
perks[a, b].costType = "gems";
perks[a, b].a = a; perks[a, b].b = b;

a = 2; b = 0;
perks[2, 0].pic = uimgGoonGem;
perks[a, b].name = "Mercenaries";
perks[a, b].text = "Spend gems to call Soldiers. In addition, when an archer runs out of arrows, if you have a spare gem it will consume it to buy more arrows instead of turning into a soldier.";
perks[a, b].cost = 100;
perks[a, b].costType = "gems";
perks[a, b].a = a; perks[a, b].b = b;

a = 3; b = 4;
perks[3, 4].pic = uimgFireUnit;
perks[a, b].name = "Fire Elemental Fighter";
perks[a, b].text = "You can produce Fire Elemental Fighters.";
perks[a, b].cost = 50;
perks[a, b].costType = "coins";
perks[a, b].a = a; perks[a, b].b = b;

a = 3; b = 3;
perks[3, 3].pic = uimgFireUnit;
perks[a, b].name = "Fire Juggler";
perks[a, b].text = "You can produce Fire Jugglers, a Fire unit with a ranged attack.";
perks[a, b].cost = 250;
perks[a, b].costType = "coins";
perks[a, b].a = a; perks[a, b].b = b;

a = 3; b = 2;
perks[3, 2].pic = uimgElePlus;
perks[a, b].name = "Elemental Reenforcements";
perks[a, b].text = "Your Elemental Fighters are more powerful. In addition, gain a bonus Elemental Fighter each time you enter a new stage.";
perks[a, b].cost = 1;
perks[a, b].costType = "banners";
perks[a, b].a = a; perks[a, b].b = b;

a = 3; b = 1;
perks[3, 1].pic = uimgFireUnit;
perks[a, b].name = "Greater Fire Juggler";
perks[a, b].text = "Your Fire Jugglers have improved stats and will step back when in the front row.";
perks[a, b].cost = 20;
perks[a, b].costType = "stars";
perks[a, b].a = a; perks[a, b].b = b;

a = 3; b = 0;
perks[3, 0].pic = uimgCrit;
perks[a, b].name = "Critical Hits";
perks[a, b].text = "Every one of your units attacks has a 10% chance to deal double damage.";
perks[a, b].cost = 70;
perks[a, b].costType = "stars";
perks[a, b].a = a; perks[a, b].b = b;

a = 4; b = 4;
perks[4, 4].pic = uimgEarthUnit;
perks[a, b].name = "Earth Elemental Fighter";
perks[a, b].text = "You can produce Earth Elemental Fighters.";
perks[a, b].cost = 50;
perks[a, b].costType = "coins";
perks[a, b].a = a; perks[a, b].b = b;

a = 4; b = 3;
perks[4, 3].pic = uimgEarthUnit;
perks[a, b].name = "Herb Collector";
perks[a, b].text = "You can produce Herb Collectors, an Earth unit that provides Herbs every second.";
perks[a, b].cost = 250;
perks[a, b].costType = "coins";
perks[a, b].a = a; perks[a, b].b = b;

a = 4; b = 2;
perks[4, 2].pic = uimgElePlus;
perks[a, b].name = "Elemental Spark";
perks[a, b].text = "Your Elemental Fighters are more powerful. In addition, your Elemental Fighter units have a 25% chance to fire an elemental shot when they attack.";
perks[a, b].cost = 1;
perks[a, b].costType = "banners";
perks[a, b].a = a; perks[a, b].b = b;

a = 4; b = 1;
perks[4, 1].pic = uimgEarthUnit;
perks[a, b].name = "Greater Herb Collector";
perks[a, b].text = "Your Herb Collectors will turn into bears with extra damage and armor when in the front row. While in bear form, they are immune to poison, have a chance to stun, and half of the damage delt to your Herb Collectors will be shared among all your Herb Collectors.";
perks[a, b].cost = 20;
perks[a, b].costType = "stars";
perks[a, b].a = a; perks[a, b].b = b;

a = 4; b = 0;
perks[4, 0].pic = imgStar;
perks[a, b].name = "Rainbow Strikes";
perks[a, b].text = "Every so often one of your foes will be turned into a harmless sheep. The more stars you have, the more often this will happen.";
perks[a, b].cost = 70;
perks[a, b].costType = "stars";
perks[a, b].a = a; perks[a, b].b = b;

a = 5; b = 4;
perks[5, 4].pic = uimgWaterUnit;
perks[a, b].name = "Water Elemental Fighter";
perks[a, b].text = "You can produce Water Elemental Fighters.";
perks[a, b].cost = 50;
perks[a, b].costType = "coins";
perks[a, b].a = a; perks[a, b].b = b;

a = 5; b = 3;
perks[5, 3].pic = uimgWaterUnit;
perks[a, b].name = "Chemist";
perks[a, b].text = "You can produce Chemists, a Water unit that heals rapidly and inflicts a stacking defbuff that increases damage received.";
perks[a, b].cost = 250;
perks[a, b].costType = "coins";
perks[a, b].a = a; perks[a, b].b = b;

a = 5; b = 2;
perks[5, 2].pic = uimgElePlus;
perks[a, b].name = "Elemental Healing";
perks[a, b].text = "Your Elemental Fighters are more powerful. In addition, your Elemental Fighter units heal faster.";
perks[a, b].cost = 1;
perks[a, b].costType = "banners";
perks[a, b].a = a; perks[a, b].b = b;


a = 5; b = 1;
perks[5, 1].pic = uimgWaterUnit;
perks[a, b].name = "Greater Chemists";
perks[a, b].text = "Your Chemists have increased stats.";
perks[a, b].cost = 20;
perks[a, b].costType = "stars";
perks[a, b].a = a; perks[a, b].b = b;

a = 5; b = 0;
perks[5, 0].pic = uimgArmor;
perks[a, b].name = "Armor Bonus";
perks[a, b].text = "All of your units spawn with 4 bonus armor.";
perks[a, b].cost = 70;
perks[a, b].costType = "stars";
perks[a, b].a = a; perks[a, b].b = b;

a = 6; b = 4;
perks[6, 4].pic = uimgOtherUnit;
perks[a, b].name = "Gentleman";
perks[a, b].text = "You can spawn Gentlemen, units with low HP and high damage.";
perks[a, b].cost = 50;
perks[a, b].costType = "coins";
perks[a, b].a = a; perks[a, b].b = b;

a = 6; b = 3;
perks[6, 3].pic = uimgOtherUnit;
perks[a, b].name = "Archer";
perks[a, b].text = "You can spawn Archers, a unit with a long ranged attack. When it runs out of arrows, it will turn into a Solider.";
perks[a, b].cost = 400;
perks[a, b].costType = "coins";
perks[a, b].a = a; perks[a, b].b = b;

a = 6; b = 2;
perks[6, 2].pic = uimgOtherUnit;
perks[a, b].name = "Bard";
perks[a, b].text = "You can spawn Bards, a unit with who's song recovers hope over time.";
perks[a, b].cost = 1000;
perks[a, b].costType = "coins";
perks[a, b].a = a; perks[a, b].b = b;

a = 6; b = 1;
perks[6, 1].pic = uimgOtherUnit;
perks[a, b].name = "Expert Archers";
perks[a, b].text = "Your Archers have greatly improved stats.";
perks[a, b].cost = 4000;
perks[a, b].costType = "coins";
perks[a, b].a = a; perks[a, b].b = b;

a = 6; b = 0;
perks[6, 0].pic = uimgOtherUnit;
perks[a, b].name = "Expert Bards";
perks[a, b].text = "Your Bards have improved stats and a 20% chance to gain and shoot an arrow each second.";
perks[a, b].cost = 6000;
perks[a, b].costType = "coins";
perks[a, b].a = a; perks[a, b].b = b;

a = 7; b = 4;
perks[7, 4].pic = uimgSkill1;
perks[a, b].name = "Lightning Strike";
perks[a, b].text = "You can press 1 and then click a space to call a lighting strike. Requires MP.";
perks[a, b].cost = 1;
perks[a, b].costType = "banners";
perks[a, b].a = a; perks[a, b].b = b;

a = 7; b = 3;
perks[7, 3].pic = uimgSkill3;
perks[a, b].name = "Frenzy";
perks[a, b].text = "You can press 3 to have your units deal double damage for a few seconds. Requires MP.";
perks[a, b].cost = 200;
perks[a, b].costType = "coins";
perks[a, b].a = a; perks[a, b].b = b;

a = 7; b = 2;
perks[7, 2].pic = uimgSkill1;
perks[a, b].name = "Lightning +";
perks[a, b].text = "Your lighting strikes deal more damage.";
perks[a, b].cost = 2;
perks[a, b].costType = "banners";
perks[a, b].a = a; perks[a, b].b = b;

a = 7; b = 0;
perks[a, b].pic = uimgSkill1;
perks[a, b].name = "Wide Lightning";
perks[a, b].text = "Your lighting strikes now hit more spaces at a time.";
perks[a, b].cost = 4;
perks[a, b].costType = "banners";
perks[a, b].a = a; perks[a, b].b = b;

a = 7; b = 1;
perks[a, b].pic = imgStar;
perks[a, b].name = "Lightning Stars";
perks[a, b].text = "Units killed by your lighting strikes will grant you a star.";
perks[a, b].cost = 3;
perks[a, b].costType = "banners";
perks[a, b].a = a; perks[a, b].b = b;


a = 8; b = 4;
perks[8, 4].pic = uimgSkill2;
perks[a, b].name = "Protect";
perks[a, b].text = "You can press 2 to halve the damage received by your front line units for a few seocnds. Requires MP.";
perks[a, b].cost = 100;
perks[a, b].costType = "coins";
perks[a, b].a = a; perks[a, b].b = b;

a = 8; b = 3;
perks[8, 3].pic = uimgSkill4;
perks[a, b].name = "Heal";
perks[a, b].text = "You can press 4 and then click a unit to heal it. Requires MP.";
perks[a, b].cost = 200;
perks[a, b].costType = "herbs";
perks[a, b].a = a; perks[a, b].b = b;

a = 8; b = 2;
perks[8, 2].pic = uimgHeal;
perks[a, b].name = "Greater Regeneration";
perks[a, b].text = "Your units will recover health more quickly.";
perks[a, b].cost = 400;
perks[a, b].costType = "herbs";
perks[a, b].a = a; perks[a, b].b = b;

a = 8; b = 1;
perks[8, 1].pic = uimgSkill4;
perks[a, b].name = "Greater Healing";
perks[a, b].text = "Your heal spell heals for more. In addition, healing a unit will remove harmful status effects.";
perks[a, b].cost = 800;
perks[a, b].costType = "herbs";
perks[a, b].a = a; perks[a, b].b = b;

a = 8; b = 0;
perks[8, 0].pic = uimgHeal;
perks[a, b].name = "Herb Healing";
perks[a, b].text = "You can spend herbs to heal your army.";
perks[a, b].cost = 1200;
perks[a, b].costType = "herbs";
perks[a, b].a = a; perks[a, b].b = b;

a = 9; b = 4;
perks[9, 4].pic = uimgSkill5;
perks[a, b].name = "Gemify";
perks[a, b].text = "You can press 5 to turn all of you Soliders into elemental gem units. Any time 3 of the same element are in a row, they will turn into gems. More powerful Soliders produce more gems.";
perks[a, b].cost = 400;
perks[a, b].costType = "coins";
perks[a, b].a = a; perks[a, b].b = b;

a = 9; b = 3;
perks[9, 3].pic = uimgSkill6;
perks[a, b].name = "Tech";
perks[a, b].text = "Whenever your MP is full you will consume a little of it to speed up your special unit production.";
perks[a, b].cost = 1;
perks[a, b].costType = "banners";
perks[a, b].a = a; perks[a, b].b = b;

a = 9; b = 2;
perks[9, 2].pic = uimgSkill3;
perks[a, b].name = "Final Strike";
perks[a, b].text = "While your 3 ability is active, skeletons cannot rise.";
perks[a, b].cost = 1000;
perks[a, b].costType = "coins";
perks[a, b].a = a; perks[a, b].b = b;

a = 9; b = 1;
perks[9, 1].pic = uimgSkill2;
perks[a, b].name = "Mirror Shielding";
perks[a, b].text = "Your 2 ability can reflect some enemy shots.";
perks[a, b].cost = 2000;
perks[a, b].costType = "coins";
perks[a, b].a = a; perks[a, b].b = b;

a = 9; b = 0;
perks[9, 0].pic = uimgOtherUnit;
perks[a, b].name = "Equipment Plus";
perks[a, b].text = "Your Gentlemen have improved stats and a poisoning attack. Your Archers gain extra arrows each stage. Bard's arrows have a slight chance to call a lightning strike.";
perks[a, b].cost = 2000;
perks[a, b].costType = "coins";
perks[a, b].a = a; perks[a, b].b = b;

a = 10; b = 4;
perks[10, 4].pic = uimgMPGain;
perks[a, b].name = "MP Gain";
perks[a, b].text = "Gain MP twice as quickly.";
perks[a, b].cost = 1;
perks[a, b].costType = "banners";
perks[a, b].a = a; perks[a, b].b = b;

a = 10; b = 3;
perks[a, b].pic = uimgEgg;
perks[a, b].name = "Dragon Egg";
perks[a, b].text = "Buy a dragon egg. It will take a long time to hatch.";
perks[a, b].cost = 500;
perks[a, b].costType = "coins";
perks[a, b].a = a; perks[a, b].b = b;

a = 10; b = 2;
perks[10, 2].pic = uimgChamp;
perks[a, b].name = "Champions";
perks[a, b].text = "Hold left click on a unit without moving it for a few seconds to make it your champion. Champion units attack twice as fast.";
perks[a, b].cost = 75;
perks[a, b].costType = "gems";
perks[a, b].a = a; perks[a, b].b = b;

a = 10; b = 1;
perks[10, 1].pic = uimgMPOvercharge;
perks[a, b].name = "Overdrive";
perks[a, b].text = "Spending MP will slowly charge your overdrive meeter. When it fills, you'll regain MP very quickly for a short while.";
perks[a, b].cost = 75;
perks[a, b].costType = "gems";
perks[a, b].a = a; perks[a, b].b = b;

a = 10; b = 0;
perks[10, 0].pic = uimgElePlusPlus;
perks[a, b].name = "Elemental Lords";
perks[a, b].text = "You can spawn Elemental Lords, the most powerful units.";
perks[a, b].cost = 16;
perks[a, b].costType = "banners";
perks[a, b].a = a; perks[a, b].b = b;

a = 11; b = 4;
perks[11, 4].pic = uimgElePlus;
perks[a, b].name = "Elemental XP";
perks[a, b].text = "Your Elemental Fighters gain XP each time they land a killing melee blow. Levling up slightly increases damage and HP.";
perks[a, b].cost = 400;
perks[a, b].costType = "coins";
perks[a, b].a = a; perks[a, b].b = b;

a = 11; b = 3;
perks[11, 3].pic = imgCoins;
perks[a, b].name = "Extra Coins";
perks[a, b].text = "Instead of producing special units, you can focus on making extra coins. (Coins will be one of the options on the unit select screen.)";
perks[a, b].cost = 400;
perks[a, b].costType = "coins";
perks[a, b].a = a; perks[a, b].b = b;

a = 11; b = 2;
perks[a, b].pic = uimgElePlus;
perks[a, b].name = "Elemental Rescue";
perks[a, b].text = "Your Elemental Fighter units are more powerful. In addition, while outnumbered, you will sometimes spawn a free Elemental Fighter, even if your army is out of hope.";
perks[a, b].cost = 2;
perks[a, b].costType = "banners";
perks[a, b].a = a; perks[a, b].b = b;

a = 11; b = 1;
perks[11, 1].pic = uimgElePlusPlus;
perks[a, b].name = "Elemental Heroes";
perks[a, b].text = "Any of your Elemental Fighters who reach level 20 will become Elemental Lords, the most powerful units.";
perks[a, b].cost = 3;
perks[a, b].costType = "banners";
perks[a, b].a = a; perks[a, b].b = b;

a = 11; b = 0;
perks[11, 0].pic = imgBanner;
perks[a, b].name = "Damage Boost";
perks[a, b].text = "All of your units deal bonus damage equal to half of your currently held banners.";
perks[a, b].cost = 10;
perks[a, b].costType = "banners";
perks[a, b].a = a; perks[a, b].b = b;

