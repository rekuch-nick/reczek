function amBomb() {
	for(var a=xSpot-1; a<=xSpot+1; a++){ for(var b=ySpot-1; b<=ySpot+1; b++){
		if(a == xSpot && b == ySpot){ continue; }
		if(inBounds(a, b)){
			var u = ww.map[a, b];
			if(u != noone){
				damage(u, spellPower, "bomb");
			}
			instance_create_depth(390 + (a * 70), (b * 70), ww.EFF_LAYER, effBlast);
	
		}
	}}


}
