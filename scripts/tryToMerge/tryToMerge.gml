function tryToMerge() {

	var gemify = ds_list_create();

	for(var a=0; a<6; a++){ for(var b=5; b<10; b++){
	
		var u = ww.map[a, b];
		if(u == noone){ continue; }
		if(!u.isGem){ continue; }
	
		if(a > 0 && a < 5){
			var u1 = ww.map[a-1, b];
			var u2 = ww.map[a+1, b];
		
			if(u1 != noone && u2 != noone){
				if(u1.isGem && u2.isGem){
					if(u1.element == u.element && u2.element == u.element){
						ds_list_add(gemify, u);
						ds_list_add(gemify, u1);
						ds_list_add(gemify, u2);
					}
				}
			}
		}
	
		if(b > 5 && b < 9){
			var u1 = ww.map[a, b-1];
			var u2 = ww.map[a, b+1];
		
			if(u1 != noone && u2 != noone){
				if(u1.isGem && u2.isGem){
					if(u1.element == u.element && u2.element == u.element){
						ds_list_add(gemify, u);
						ds_list_add(gemify, u1);
						ds_list_add(gemify, u2);
					}
				}
			}
		}
	




	}}



	for(var i=0; i<ds_list_size(gemify); i++){
		var u = ds_list_find_value(gemify, i);
		u.hp = 0;
		u.hope = 0;
		ww.gems ++;
		if(u.object_index == objGoon2){ ww.gems ++; }
		if(u.object_index == objGoon3){ ww.gems += 2; }
		if(u.object_index == objGoon4){ ww.gems += 3; }
		if(u.object_index == objGoon5){ ww.gems += 4; }
		instance_create_depth(390 + (u.xSpot * 70) + 35, (u.ySpot * 70) + 35, ww.EFF_LAYER, effGem);
	}

	ds_list_destroy(gemify);













	/*
	var u1 = argument0;
	var u2 = argument1;

	if(u1 == noone || u2 == noone){ return; }
	if(!u1.isGem || !u2.isGem){ return; }

	if(u1.element != element){ return; }
	if(u2.element != element){ return; }

	u1.hope = 0; u1.hp = 0;
	u2.hope = 0; u2.hp = 0;

	instance_create_depth(390 + (u1.xSpot * 70) + 35, (u1.ySpot * 70) + 35, ww.EFF_LAYER, effGem);
	instance_create_depth(390 + (u2.xSpot * 70) + 35, (u2.ySpot * 70) + 35, ww.EFF_LAYER, effGem);

	element = "" + string(irandom_range(0, 1000));
	if(object_index == objGoon){ sprite_index = imgMixGem1; }
	if(object_index == objGoon2){ sprite_index = imgMixGem2; }
	if(object_index == objGoon3){ sprite_index = imgMixGem3; }
	if(object_index == objGoon4){ sprite_index = imgMixGem4; }
	if(object_index == objGoon5){ sprite_index = imgMixGem5; }

	ww.gems += 3;
	mhp = ceil(mhp * 1.2);
	hp = mhp;
	might *= 2;
	regen += 1;
	*/


}
