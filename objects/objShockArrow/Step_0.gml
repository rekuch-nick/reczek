if(ww.state != "play"){ return; }

if(firstFrame){
	firstFrame = false;
	
	var angle = arctan2(yt - y, xt - x);
	xs = cos(angle) * moveSpeed;
	ys = sin(angle) * moveSpeed;
	
	image_angle = point_direction(x, y, xt, yt);
	dis = distance_to_point(xt, yt);
}

for(var i=0; i<=ww.gameSpeed; i++){

	x += xs;
	y += ys;
	dis -= moveSpeed;
	
	if(dis < 1){
		var x1 = getX(x); var y1 = getY(y);
		if(inBounds(x1, y1)){
			var u = ww.map[x1, y1];
			if(u != noone && u.foe != foe){
				//damage(ww.map[x1, y1], pow, "arrow");
				lightningBolt(x1, y1);
				
			}
		}
		
		instance_destroy();
		break;
	}
}