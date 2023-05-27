function getRandomMonster() {



	if(instance_number(objUnit) == 0){ return noone; }
	if(instance_number(objMob) == 0){ return noone; }

	var okay;
	var t;
	var tries = 0;

	do {
		okay = true;
		tries ++;
	
		var r = irandom_range(0, instance_number(objMob) - 1);
		t = instance_find(objMob, r);
	
		if(t == noone){ continue; }
	
		if(!t.foe){ okay = false; }
		if(!t.sprite_index == imgSheep){ okay = false; }
	
	} until (okay || tries > 100);

	if(okay){
		return t;
	} else {
		return noone;
	}


}
