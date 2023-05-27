function spendMP(argument0) {
	var n = argument0;

	ww.mp -= n;

	if(!ww.mpChargeFull && ww.perk[10, 1]){
		ww.mpCharge += n;
		if(ww.mpCharge >= (ww.mmp * 10)){
			ww.mpCharge = (ww.mmp * 10);
			ww.mpChargeFull = true;
		}
	}


	if(ww.mp < 0){ ww.mp = 0; }


}
