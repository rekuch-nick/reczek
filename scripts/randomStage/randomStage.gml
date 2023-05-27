function randomStage() {
	var m; var c; var cd;


	for(var i=0; i<6; i++){
		var typ, var cost, var wait;
		var r = irandom_range(1, 23);
		if(r == 1){ typ = objCreep; cost = 2; wait = 120; }
		if(r == 2){ typ = objBubble; cost = 3; wait = 120; }
		if(r == 3){ typ = objBramble; cost = 3; wait = 120; }
		if(r == 4){ typ = objCandle; cost = 3; wait = 120; }
		if(r == 5){ typ = objCreep2; cost = 4; wait = 120; }
		if(r == 6){ typ = objOrc; cost = 4; wait = 120; }
		if(r == 7){ typ = objNinja; cost = 4; wait = 120; }
		if(r == 8){ typ = objMagKnight; cost = 4; wait = 120; }
		if(r == 9){ typ = objSnowman; cost = 5; wait = 120; }
		if(r == 10){ typ = objEnt; cost = 5; wait = 120; }
		if(r == 11){ typ = objFlame; cost = 5; wait = 120; }
		if(r == 12){ typ = objCreep3; cost = 6; wait = 120; }
		if(r == 13){ typ = objSkullCaster; cost = 7; wait = 120; }
		if(r == 14){ typ = objFrostCaster; cost = 7; wait = 120; }
		if(r == 15){ typ = objPoxCaster; cost = 7; wait = 120; }
		if(r == 16){ typ = objCreep4; cost = 8; wait = 120; }
		if(r == 17){ typ = objFishTank; cost = 9; wait = 120; }
		if(r == 18){ typ = objThorn; cost = 9; wait = 120; }
		if(r == 19){ typ = objImp; cost = 9; wait = 120; }
		if(r == 20){ typ = objBrute; cost = 10; wait = 120; }
		if(r == 21){ typ = objKing; cost = 11; wait = 120; }
		if(r == 22){ typ = objFearCaster; cost = 11; wait = 120; }
		if(r == 23){ typ = objDruid; cost = 12; wait = 120; }
	
		m[i] = typ;
		c[i] = cost;
		cd[i] = wait;
	}






	
		ww.early = noone; ww.mid = noone; ww.late = noone;
		ww.mobList = m;
		ww.mobCost = c;
		ww.mobCD = cd;


}
