function getAdjacentAlly() {



	var okay;
	var t;
	var tries = 0;

	do {
		okay = true;
		tries ++;
	
		var r = irandom_range(0, instance_number(objUnit) - 1);
		t = instance_find(objUnit, r);
	
		if(t.foe == foe){ okay = false; }
		if(abs(xSpot - t.xSpot) > 1){ okay = false; }
		if(abs(ySpot - t.ySpot) > 1){ okay = false; }
		if(abs(xSpot - t.xSpot) == 0 && abs(ySpot - t.ySpot) == 0){ okay = false; }
	
	} until (okay || tries > 500);

	if(okay){
		return t;
	} else {
		return noone;
	}


}
