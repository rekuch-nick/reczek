function getRandomNonFrontFoe() {

	if(instance_number(objUnit) == 0){ return noone; }

	var okay;
	var t;
	var tries = 0;

	do {
		okay = true;
		tries ++;
	
		var r = irandom_range(0, instance_number(objUnit) - 1);
		t = instance_find(objUnit, r);
	
		if(t.foe == foe){ okay = false; }
		if(t.ySpot == 4 || t.ySpot == 5){ okay = false; }
	
	} until (okay || tries > 100);

	if(okay){
		return t;
	} else {
		return noone;
	}


}
