function frost() {

	var pow = spellPower;

	var num = floor(instance_number(objUnit) / 4);
	var tries = 0;
	while(num > 0 && tries < 500){
		var u = getRandomFoe();
		if(u != noone){
			if(u.frozen < 30){
				num --;
				u.frozen += pow;
			}
		}
	
		tries ++;
	}




}
