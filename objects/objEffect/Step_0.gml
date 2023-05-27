for(var i=0; i<ww.gameSpeed; i++){
	
	x += xs;
	y += ys;
	
	ys += grav;
	
	image_xscale += grow;
	image_yscale += grow;
	
	image_angle += rotate;
	
	if(flicker){
		image_alpha = random_range(.1, 1);
	}
	
	image_alpha -= fade;
	
	if(rot3d){
		n = baseXScale / (baseTime / 2);
		
		if(time / baseTime > .5){
			image_xscale -= n;
		} else {
			image_xscale += n;
		}
	}
	
	
	time --;
	
	if(time < 1 || image_alpha <= 0){
		instance_destroy();
	}
	
}