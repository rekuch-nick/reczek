if(ww.state != "play"){ return; }

for(var i=0; i<ww.gameSpeed; i++){
	
	
	image_alpha = random_range(.5, 1);
	
	time --;
	if(time < 1){
		var a = getX(x + 1);
		var b = getY(y + 1);
		var u = ww.map[a, b];
		if(u != noone){
			u.frozen += pow;
			u.hp -= 20;
		}
		
		instance_destroy();
	}
}