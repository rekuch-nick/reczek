if(ww.mouseOverUnit == id){ ww.mouseOverUnit = noone; }

if(selected){

	var xx = xSpot;
	var yy = ySpot;

	var xMid = x + 35;
	var yMid = y + 35;
	
	yd = abs(yMid - mouse_y);
	xd = abs(xMid - mouse_x);
	
	if(yd > xd){
		if(mouse_y < yMid){
			yy --;
		} else {
			yy ++;
		}
	} else {
		if(mouse_x < xMid){
			xx --;
		} else {
			xx ++;
		}
	}
	
	if(inBounds(xx, yy)){
		var tar = ww.map[xx, yy];
		if(tar != noone && tar.foe == false){
			thinkCD = thinkCDMax;
			tar.thinkCD = tar.thinkCDMax;
			
			if(!foe && yy < ySpot && retreat){
				if(ww.map[xx, yy] != noone && !ww.map[xx, yy].retreat){
					retreat = false;
				}
			}
			
			moveTo(xx, yy);
		}
	}
	
}


if(selected){
	ww.selected = noone;
	selected = false;
	scaleToSize(70, 70);
}