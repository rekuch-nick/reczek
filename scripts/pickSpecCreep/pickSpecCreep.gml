function pickSpecCreep() {

	if(ww.stage <= 2){ return objCreep; }

	var t = objCreep;

	var rMin = floor(ww.stage / 10);
	var rMax = 1 + floor(ww.stage / 5);

	if(ww.stage >= 25){ rMax ++; }
	if(ww.stage >= 30){ rMax ++; }
	if(ww.stage >= 35){ rMax ++; }

	if(ww.stage % 4 == 0){
		rMin = rMax - 1;
	}

	var r = irandom_range(rMin, rMax);
	if(r == 1){ t = objBubble; }
	if(r == 2){ t = objCandle; } //  5 | 20
	if(r == 3){ t = objNinja; } //   10 | 30
	if(r == 4){ t = objShadow; } //  15 | 40
	if(r == 5){ t = objFrostCaster; } //20 | 50
	if(r == 6){ t = objSnowman; }  // 25
	if(r == 7){ t = objShadow2; }  // 25
	if(r == 8){ t = objSkullCaster; }  // 30
	if(r == 9){ t = objFlame; }  // 30
	if(r == 10){ t = objShadow3; } // 30
	if(r == 11){ t = objPoxCaster; } // 35
	if(r == 12){ t = objFearCaster; } // 40
	if(r == 13){ t = objDruid; }  // 45

	return t;


}
