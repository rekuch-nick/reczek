if(ww.state != "play"){ return; }

for(var i=0; i<ww.gameSpeed; i++){
	
	y += dir * 6;
	if(didBounce){ y += dir * 2; }
	x += xDir * 2;
	xOff += 2;
	if(xOff >= 20 && !didBounce){
		xDir *= -1;
		xOff = 0;
	}
	
	
	if(yCD > 0){ yCD -= 6; }
	
	var x1 = getX(x); var y1 = getY(y);
	
	if(!inBounds(x1, y1)){
		instance_destroy();
		break;
	}
	
	if(dir == 1 && y1 > 4){
		if(y1 == 5 && ww.deflectShots && canBounce && !didBounce && ww.shield > 0){
			dir *= -1;
			xDir = 0;
			
			return;
		}
		
		
		
		var u = ww.map[x1, y1];
		if(u != noone && yCD <= 0){
			damage(ww.map[x1, y1], pow, element);
			
			if(!passThrough){
				instance_destroy();
				break;
			} else {
				yCD = 70;
			}
		}
	}
	
	if(dir == -1 && y1 < 5){
		var u = ww.map[x1, y1];
		if(u != noone){
			damage(ww.map[x1, y1], pow, element);
			instance_destroy();
			break;
		}
	}
	
	
}