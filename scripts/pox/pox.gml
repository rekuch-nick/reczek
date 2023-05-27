function pox() {

	var poisoned = 0;
	/*
	with(objUnit){
		if(!foe && poisoned > 0){
			poisoned ++;
		}
	}
	*/
	if(poisoned == 0){
		var u = getRandomFoe();
		if(u != noone){
			u.poison += spellPower;
		}
		return;
	}

	/*
	var infect = ds_list_create();

	for(var a=0; a<6; a++){ for(var b=5; b<10; b++){
		var u = ww.map[a, b];
		if(u != noone){
			var i = getAdjacentAlly();
			if(i != noone){ ds_list_add(infect, i); }
		}
	}}

	for(var i=0; i<ds_list_size(infect); i++){
		var u = ds_list_find_value(infect, i);
		u.poison = spellPower;
	}

	ds_list_destroy(infect);
	*/


}
