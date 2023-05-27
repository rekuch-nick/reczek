function blastAoE() {

	var pow = spellPower;

	for(var a=xSpot-1; a<=xSpot+1; a++){
		if(a < 0 || a > 5){ continue; }
	
		var u = ww.map[a, ySpot + 1];
		if(u != noone){
			damage(u, pow, "Fire");
		}
		instance_create_depth(390 + (a * 70), (ySpot + 1) * 70, depth, effBlast);
		
	}




}
