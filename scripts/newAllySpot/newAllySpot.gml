function newAllySpot() {
	var full = 0;
	for(var i=0; i<6; i++){
		if(ww.map[i, 9] != noone){ full ++; }
	}

	if(full == 6){ return -1; }

	var n = -1;
	do {
		var b = irandom_range(0, 5);
		if(ww.map[b, 9] == noone){
			n = b;
		}
	} until (n != -1);

	return n;


}
