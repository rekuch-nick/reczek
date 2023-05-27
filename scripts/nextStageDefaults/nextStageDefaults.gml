function nextStageDefaults() {
	for(var i=0; i<6; i++){
		c[i] = 3;
		cd[i] = 210;
	
	
	
		if(m[i] == "creep"){ c[i] = 0; cd[i] = 210; }
		if(m[i] == "spec"){ c[i] = 0; cd[i] = 210; }
		if(m[i] == objCreep0){ c[i] = 2; cd[i] = 150; }
		if(m[i] == objCreep){ c[i] = 3; cd[i] = 210; }
		if(m[i] == objBubble){ c[i] = 3; cd[i] = 210; }
		if(m[i] == objBramble){ c[i] = 3; cd[i] = 210; }
		if(m[i] == objCandle){ c[i] = 3; cd[i] = 210; }
		if(m[i] == objCreep2){ c[i] = 4; cd[i] = 210; }
		if(m[i] == objOrc){ c[i] = 4; cd[i] = 210; }
		if(m[i] == objNinja){ c[i] = 4; cd[i] = 210; }
		if(m[i] == objMagKnight){ c[i] = 4; cd[i] = 210; }
		if(m[i] == objSnowman){ c[i] = 5; cd[i] = 210; }
		if(m[i] == objEnt){ c[i] = 5; cd[i] = 210; }
		if(m[i] == objShadow2){ c[i] = 5; cd[i] = 210; }
		if(m[i] == objFlame){ c[i] = 5; cd[i] = 210; }
		if(m[i] == objCreep3){ c[i] = 5; cd[i] = 210; }
		if(m[i] == objSkullCaster){ c[i] = 6; cd[i] = 210; }
		if(m[i] == objFrostCaster){ c[i] = 6; cd[i] = 210; }
		if(m[i] == objPoxCaster){ c[i] = 6; cd[i] = 210; }
		if(m[i] == objCreep4){ c[i] = 6; cd[i] = 210 }
		if(m[i] == objFishTank){ c[i] = 6; cd[i] = 210; }
		if(m[i] == objThorn){ c[i] = 6; cd[i] = 210; }
		if(m[i] == objImp){ c[i] = 6; cd[i] = 210; }
		if(m[i] == objShadow3){ c[i] = 6; cd[i] = 210; }
		if(m[i] == objBrute){ c[i] = 7; cd[i] = 210; }
		if(m[i] == objKing){ c[i] = 8; cd[i] = 210; }
		if(m[i] == objFearCaster){ c[i] = 8; cd[i] = 210; }
		if(m[i] == objDruid){ c[i] = 9; cd[i] = 210; }
	
		var time = clamp(210 - ww.stage, 45, 210);
		cd[i] = time;
		if(i < 3){ cd[i] = time - 30; }
	}

	ww.early = noone; ww.mid = noone; ww.late = noone;


}
