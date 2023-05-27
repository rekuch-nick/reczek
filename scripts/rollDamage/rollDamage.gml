function rollDamage(argument0, argument1, argument2, argument3, argument4) {


	var dice = argument0;
	var might = argument1;
	var ele = argument2;
	var foe = argument3;
	var tar = argument4;


	var n = 0;

	n += might;

	for(var i=0; i<dice; i++){
		var r = irandom_range(1, 6);
	
	
		n += r;
	}

	var nat = n;

	if(tar.defDown > 0){ n += tar.defDown; }

	if(ele == "Fire" && tar.element == "Earth"){ n += nat; }
	if(ele == "Earth" && tar.element == "Water"){ n += nat; }
	if(ele == "Water" && tar.element == "Fire"){ n += nat; }


	if(!foe && ww.winBonus){
		var bns = floor(ww.banners / 2);
		n += bns;
	}



	if(ww.rage > 0 && tar.foe){
		n += nat;
	}

	if(ww.perk[3, 0] && !foe && irandom_range(0, 99) < 10){
		n += nat;
	}




	if(ele == "arrow" && tar.resistArrows > 0){
		n = clamp(n - tar.resistArrows, 1, n);
	}

	if(tar.ySpot == 5 && ww.shield > 0){
		n = ceil(n * .5);
	}

	//n = clamp(n - tar.armor, 1, n);


	return n;


}
