if(ww.state != "play"){ return; }

for(var i=0; i<ww.gameSpeed; i++){
	
	y += dir * 4;
	disGone += 4;
	
	if(disGone > (abs(yStart - yt) / 2)){
		x += dir;
	} else {
		x -= dir;
	}
	
	
	if(dir == 1 && y >= yt){
		var x1 = getX(x); var y1 = getY(y);
		if(x1 >= 0 && x1 <= 5 && y1 >= 0 && y1 <= 9){
			damage(ww.map[x1, y1], pow, element);
		}
		instance_destroy();
		break;
	}
	
	if(dir == -1 && y <= yt){
		var x1 = getX(x); var y1 = getY(y);
		if(inBounds(x1, y1)){
			
			damage(ww.map[x1, y1], pow, element);
			
			
			if(shooter != noone && instance_exists(shooter)){
				if(ww.map[x1, y1] != noone && ww.map[x1, y1].hp < 1){
					if(shooter.isEleFighter && ww.eleXPGain){
						shooter.xp += ceil(ww.map[x1, y1].mhp / ww.eleFighterXPFactor);
					}
	
				}
			}
			
			
		}
		instance_destroy();
		break;
	}
}