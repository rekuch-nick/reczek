function allFire() {

	var pow = spellPower;

	with(objUnit){
		if(!foe){
			hp -= pow;
			instance_create_depth(x + 35, y + 35, ww.EFF_LAYER, effFire);
		}
	}


}
