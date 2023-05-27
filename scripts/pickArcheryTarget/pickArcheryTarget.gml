function pickArcheryTarget() {
	//if(archeryTarget != noone && irandom_range(0, 2) != 1){
	//	return archeryTarget;
	//}
	if(!foe && instance_number(objMagKnight) > 0){
		var r = irandom_range(0, instance_number(objMagKnight) - 1);
		t = instance_find(objMagKnight, r);
		return t;
	}

	var okay;
	var t;
	var tries = 0;

	do {
		okay = true;
		tries ++;
	
		var r = irandom_range(0, instance_number(objUnit) - 1);
		t = instance_find(objUnit, r);
	
		if(t.foe == foe){ okay = false; }
	
	} until (okay || tries > 100);

	if(okay){
		return t;
	} else {
		return noone;
	}


}
