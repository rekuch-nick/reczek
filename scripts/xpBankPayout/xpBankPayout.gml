function xpBankPayout() {
	if(!irandom_range(0, 2) == 1){ return; }

	if(ww.xpBanked > 0){
		with(objUnit){
			if(!foe && isEleFighter){
				xp ++;
				ww.xpBanked --;
			}
		}
		if(ww.xpBanked < 0){ ww.xpBanked = 0; }
	}


}
