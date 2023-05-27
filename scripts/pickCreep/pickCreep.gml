function pickCreep() {

	if(ww.stage <= 2){ return objCreep0; }

	var t = objCreep0;

	var rMin = floor(ww.stage / 10);
	var rMax = 1 + floor(ww.stage / 5);
	if(ww.stage > 15){ rMax += 1; }
	if(ww.stage > 19){ rMax += 1; }
	if(ww.stage > 25){ rMax += 1; }


	if(ww.stage > 20){ rMin += 1; }
	if(ww.stage > 30){ rMin += 1; }



	var r = irandom_range(rMin, rMax);
	if(r == 1){ t = objCreep; } //                 |20
	if(r == 2){ t = objBramble; } // 5             |21
	if(r == 3){ t = objCreep2; } // 10             |30
	if(r == 4){ t = objOrc; } // 15                |31
	if(r == 5){ t = objLavaCreep; } // 16          |40
	if(r == 6){ t = objEnt; } // 20                |50
	if(r == 7){ t = objCreep3; } // 20
	if(r == 8){ t = objFishTank; } // 25
	if(r == 9){ t = objThorn; } // 26
	if(r == 10){ t = objImp; } // 30
	if(r == 11){ t = objCreep4; } //35
	if(r == 12){ t = objBrute; } //40
	if(r == 13){ t = objKing; } //45



	if(ww.stage > 12 && instance_number(objArcher) >= 5){
	
		if(irandom_range(1, 16) == 1){ 
			t = objMagKnight; 
			if(r >= 6){ t = objMagKnight2; }
			if(r >= 11){ t = objMagKnight3; }
		}
	
	}



	return t;


}
