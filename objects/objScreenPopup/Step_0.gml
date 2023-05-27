if(setUpgrades){
	
	setUpgrades = false;
	
	instance_destroy(eB);
	eB = noone;
	
	
	for(var i=0; i<5; i++){
		
		if(!ww.epic[i]){
			var s = instance_create_depth(x + 100, y + 100 + (i * 100), depth - 1, objExitButton);
			s.sprite_index = imgExitButtonEpic;
			s.skill = i;
		}
	}
	
	
	
}


var vis = ww.popupPage == pMax;
with(objExitButton){ visible = vis; }