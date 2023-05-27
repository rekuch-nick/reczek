function rainbowSheep() {
	var u = getRandomMonster();

	if(u != noone && !u.cannotBeSheep){
		instance_create_depth(u.x + 35, u.y + 35, ww.EFF_LAYER - 1, effRainbow);
		u.sprite_index = imgSheep;
		u.armor = 0;
		u.poisonChance = 0;
		u.might = 0;
		u.dice = 1;
		u.lobShot = noone;
		u.shot = noone;
		u.spell = "";
		u.spawnSkelly = false;
		u.warpChance = 0;
		if(u.hp > 200){ u.hp = 200; }
		
		
		
	
	}




}
