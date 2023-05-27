function useHerbHeal() {
	if(ww.herbHeal && ww.herbs >= 2){

		for(var i=0; i<ww.gameSpeed; i++){
			var didHeal = false;
		
			with(objUnit){
				if(hp < mhp && !foe && hp > 0){
					hp = clamp(hp + 1, 0, mhp);
					didHeal = true;
				}
			}
	
			if(didHeal){ ww.herbs -=2; }
			if(ww.herbs < 2){ break; }
		}
	
	}

	mouseOverHelp.hide = true;


}
