function dragonSafe(argument0, argument1) {
	var a = argument0;
	var b = argument1;

	if(ww.champ == ww.map[a, b]){ ww.champ = noone; }

	if(instance_number(objDragon) > 0){
		var d = instance_find(objDragon, 0);
	
		if(d.pickupTarget != noone){
		
			if(d.pickupTarget.xSpot == a && d.pickupTarget.ySpot == b){
	
				d.takingHome = false;
				d.pickupTarget = noone;
				d.carried = noone;
				d.carriedHP = 0;
			}
		
		}
	}


}
